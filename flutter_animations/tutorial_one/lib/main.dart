import 'package:flutter/material.dart';
import 'package:tutorial_one/animated_logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _animation = Tween<double>(begin: 20.0, end: 50.0).animate(_controller);
    // _animation.addListener(() {
    //   setState(() {
    //     print(_animation.value.toString());
    //   });
    // });
    _animation.addStatusListener((status) => print(status));
    _controller.forward();
    // _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedLogo(key: widget.key, animation: _animation),

      //  Center(
      //   child: Container(
      //     height: _animation.value,
      //     width: _animation.value,
      //     child: Image.network(
      //         'https://media.istockphoto.com/photos/graduate-students-smiling-with-their-parents-on-their-graduation-day-picture-id1349302590?b=1&k=20&m=1349302590&s=612x612&w=0&h=Apd1TIgNVn52WQPDcNc_oLVqq_ep22YN_SppNouBUUk='),
      //   ),
      // ),
    );
  }
}
