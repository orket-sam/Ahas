import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  final bool isActive;
  final VoidCallback funky;
  const CustomButton({super.key, required this.funky, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: isActive ? Colors.blue : Colors.white),
        onPressed: isActive ? funky : null,
        child: Text(
          'Submit',
          style: TextStyle(color: isActive ? Colors.white : Colors.blue),
        ));
  }
}
