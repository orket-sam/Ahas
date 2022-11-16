import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screens/custom_textfield.dart';

class LogIn1 extends StatelessWidget {
  final emailNode = FocusNode();
  final paswordNode = FocusNode();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  LogIn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          SvgPicture.asset(
            'assets/login.svg',
            width: MediaQuery.of(context).size.width * 0.4,
          ),
          const Text(
            'Username',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          CustomTextField(
            controller: nameController,
            nextNode: emailNode,
            hintText: 'John Doe',
            labelText: 'Enter a username',
          ),
          const Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          CustomTextField(
            controller: emailController,
            nextNode: paswordNode,
            node: emailNode,
            hintText: 'a@abc.com',
            labelText: 'Enter your email address',
          ),
          const Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          CustomTextField(
            controller: passController,
            node: paswordNode,
            hintText: '',
            labelText: 'Account password',
            obscure: true,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Register'))
        ],
      ),
    );
  }
}
