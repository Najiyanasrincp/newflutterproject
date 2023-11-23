import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(MaterialApp(
  home: MyRiveAnimation(),
));

class MyRiveAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.asset(
          'rivefiles/6273-12187-a-moon.riv',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}