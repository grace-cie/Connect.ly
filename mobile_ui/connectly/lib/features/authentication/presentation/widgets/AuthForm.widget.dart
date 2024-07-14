import 'package:flutter/material.dart';

class AuthFormWidget extends StatelessWidget {
  const AuthFormWidget({
    super.key,
    required this.label,
    required this.controller,
    this.isPassword,
    required this.focusNode,
  });

  final String label;
  final TextEditingController controller;
  final bool? isPassword;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        focusNode: focusNode,
        style: const TextStyle(color: Colors.black),
        controller: controller,
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Color.fromRGBO(158, 158, 158, 1),
          ),
          focusedBorder: defaultInput,
          enabledBorder: defaultInput,
          hintText: label,
          filled: true,
          fillColor: Colors.grey.shade100,
        ),
        validator: (String? value) {
          return (value?.length ?? 0) < 8
              ? 'Minimum character length is 8'
              : null;
        },
      ),
    );
  }

  OutlineInputBorder get defaultInput => OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(5),
      );
}
