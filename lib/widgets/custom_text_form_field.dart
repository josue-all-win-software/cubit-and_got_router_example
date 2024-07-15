import 'package:flutter/material.dart';

class CustomTextFormfield extends StatelessWidget {
  final String? hintText;
  final String? initialValue;
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  const CustomTextFormfield({
    super.key,
    this.hintText,
    this.onChanged,
    this.controller,
    this.initialValue
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        initialValue: initialValue,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          )
        ),
      ),
    );
  }
}