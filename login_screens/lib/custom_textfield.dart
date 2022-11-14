import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool? obscure;
  final String labelText, hintText;
  const CustomTextField(
      {super.key,
      this.obscure,
      required this.hintText,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: TextField(
        obscureText: obscure ?? false,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color(
              0xfff3f3f3,
            )),
      ),
    );
  }
}
