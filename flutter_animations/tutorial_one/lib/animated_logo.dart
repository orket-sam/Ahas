import 'package:flutter/material.dart';

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
      width: animation.value.toDouble(),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.purple,
      ),
    );
  }
}
