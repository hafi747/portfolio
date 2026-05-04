import 'package:flutter/material.dart';
import 'package:portfolio/config/color/colors.dart';

class Gradientmask extends StatelessWidget {
  final String text;
  final TextStyle style;
  const Gradientmask(this.text, {super.key, required this.style});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [const Color.fromARGB(255, 194, 52, 52), MColors.yellow],
        begin: Alignment.lerp(Alignment.bottomLeft, Alignment.topRight, 0.7)!,
      ).createShader(bounds),
      child: Text(text, style: style.copyWith(color: Colors.white)),
    );
  }
}
