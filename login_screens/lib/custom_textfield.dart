import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool? obscure;
  final TextEditingController controller;
  final String labelText, hintText;
  final FocusNode? nextNode;
  final FocusNode? node;
  const CustomTextField(
      {super.key,
      required this.controller,
      this.node,
      this.nextNode,
      this.obscure,
      required this.hintText,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: TextField(
        controller: controller,
        focusNode: node,
        onSubmitted: (value) {
          nextNode?.requestFocus();
          print('**************************************************');
        },
        obscureText: obscure ?? false,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding:
                const EdgeInsets.only(left: 14.0, top: 8, bottom: 8),
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
