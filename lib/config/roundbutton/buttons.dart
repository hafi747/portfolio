import 'package:flutter/material.dart';
import 'package:portfolio/config/color/colors.dart';

class RoundButton extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  const RoundButton({required this.text, required this.onpressed});

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: MColors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: widget.onpressed,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
