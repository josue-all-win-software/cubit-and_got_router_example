import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final void Function()? onPressed;
  final String textButton;

  const CustomButtom({
    super.key,
    this.onPressed,
    required this.textButton
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FilledButton(
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Color.fromARGB(255, 40, 90, 133)
        )
      ),
      onPressed: onPressed,
      child: Text(
        textButton,
        style: textTheme.titleMedium?.copyWith(
          color: Colors.white
        )
      )
    );
  }
}