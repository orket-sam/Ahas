import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    // animation =
    // ColorTween(begin: Colors.black, end: Colors.white).animate(controller);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInCubic);
    // animation = Tween<double>(begin: 0, end: 1).animate(controller);
    animation.addStatusListener((status) {
      if (animation.isCompleted) {
        controller.reverse();
      } else if (animation.isDismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: AnimatedLogo(
          animation: animation,
        ),
      )),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class AnimatedLogo extends AnimatedWidget {
  final _height = Tween(begin: 50.0, end: 100.0);
  AnimatedLogo({Key? key, required Animation animation})
      : super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Opacity(
      opacity: animation.value,
      child: SizedBox(
        width: 100,
        height: _height.evaluate(animation),
        child: const FlutterLogo(),
      ),
    );
  }
}
