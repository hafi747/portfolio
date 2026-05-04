import 'package:flutter/material.dart';

class FrontPageScreen extends StatefulWidget {
  const FrontPageScreen({super.key});

  @override
  State<FrontPageScreen> createState() => _FrontPageScreenState();
}

class _FrontPageScreenState extends State<FrontPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     RichText(
    //       text: TextSpan(
    //         text: 'Hey, I\'m Abdul Hafeez',
    //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //         children: [
    //           TextSpan(
    //             text: '\nFlutter Developer',
    //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
