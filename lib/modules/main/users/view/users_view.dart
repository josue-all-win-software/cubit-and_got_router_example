import 'package:cubit_example/domain/models/new_user.dart';
import 'package:cubit_example/modules/main/users/cubit/users_cubit.dart';
import 'package:cubit_example/utilities/show_custom_progress_indicator.dart';
import 'package:cubit_example/widgets/custom_button.dart';
import 'package:cubit_example/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(),
      child: const _Userscontent(),
    );
  }
}

class _Userscontent extends StatefulWidget {
  const _Userscontent();

  @override
  State<_Userscontent> createState() => __UserscontentState();
}

class __UserscontentState extends State<_Userscontent> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BlocListener<UsersCubit, UsersState>(
        listener: (context, state) {
          
          if(state is UsersLoading) {
            showCustomProgressIndicator(context);

            return;
          }

          if (state is UsersSuccess) {
            Navigator.of(
              context, 
              rootNavigator: true
            ).pop();

            _nameController.clear();
            _emailController.clear();
          }

        },
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Add new user",
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            CustomTextFormfield(
              controller: _nameController,
              hintText: "Add user name",
            ),
            CustomTextFormfield(
              hintText: "Add user email",
              controller: _emailController,
            ),
            CustomButtom(
              textButton: "Save",
              onPressed: () {
                FocusScope.of(context).unfocus();

                final usersCubit = context.read<UsersCubit>();

                final newUser = NewUser(
                  name: _nameController.text, 
                  email: _emailController.text
                );

                usersCubit.saveUser(newUser: newUser);
              },
            )
          ],
        )),
      ),
    );
  }
}
