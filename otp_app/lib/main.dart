import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 25,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Pinput(
          androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
          length: 10,
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: defaultPinTheme.copyDecorationWith(
            border: Border.all(
              color: Colors.purple,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ),
    );
  }
}
