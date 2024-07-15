import 'package:cubit_example/config/router/app_routes.dart';
import 'package:cubit_example/modules/initial/login/cubit/login_cubit.dart';
import 'package:cubit_example/utilities/show_custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const _LoginContent(),
    );
  }
}

class _LoginContent extends StatelessWidget {
  const _LoginContent();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          showCustomProgressIndicator(context);

          return;
        }

        if (state is LoginSuccess) {
          Navigator.pop(context);

          context.go(AppRoutes.userRoute);

          return;
        }
      },
      child: Scaffold(
        body: Center(
          child: FilledButton(
            onPressed: () {
              final loginCubit = context.read<LoginCubit>();
              loginCubit.login();
            },
            child: const Text(
              "Login",
              style: TextStyle(
                fontSize: 18
              ),
            )
          )
        )
      ),
    );
  }
}
