import 'package:flutter/material.dart';
import 'package:teste_flutter/widgets/animation/home.dart';

class AnimationDemo extends StatelessWidget {
  const AnimationDemo({Key key}) : super(key: key);

  static const String routeName = '/animation';

  @override
  Widget build(BuildContext context) => const AnimationDemoHome();
}