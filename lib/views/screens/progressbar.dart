import 'package:flutter/material.dart';
import 'package:portfolio/config/sizeadjust/resize.dart';
import 'package:portfolio/config/sizeadjust/styletype.dart';

class SkillsBar extends StatelessWidget {
  final String skill;
  final double proficiency; // Value between 0.0 and 1.0
  const SkillsBar({super.key, required this.skill, required this.proficiency});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$skill,',
          style: AppTextStyles.rbody.copyWith(color: Colors.white),
        ),
        H(height: 5),
        LinearProgressIndicator(
          value: proficiency,
          backgroundColor: Colors.grey[300],
          color: Colors.blue,
          minHeight: 5,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
        ),
        H(height: 20),
      ],
    );
  }
}
