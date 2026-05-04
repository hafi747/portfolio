import 'package:flutter/material.dart';

class H extends StatefulWidget {
  final double? height;
  final double? width;
  const H({this.height, this.width});

  @override
  State<H> createState() => _HState();
}

class _HState extends State<H> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: widget.height, width: widget.width);
  }
}
