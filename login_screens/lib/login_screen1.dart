import 'package:flutter/material.dart';
import 'package:login_screens/custom_textfield.dart';

class LogIn1 extends StatelessWidget {
  const LogIn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Text('Logo')),
          Text(
            'Username',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          CustomTextField(
            hintText: 'John Doe',
            labelText: 'Enter a username',
          ),
          Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          CustomTextField(
            hintText: 'a@abc.com',
            labelText: 'Enter your email address',
          ),
          Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          CustomTextField(
            hintText: '',
            labelText: 'Account password',
            obscure: true,
          ),
        ],
      ),
    );
  }
}
