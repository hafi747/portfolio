import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/config/color/colors.dart';
import 'package:portfolio/config/color/gradientmask.dart';
import 'package:portfolio/config/roundbutton/buttons.dart';
import 'package:portfolio/config/sizeadjust/openurl.dart';
import 'package:portfolio/config/sizeadjust/resize.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/config/sizeadjust/styletype.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHovered1 = false;
  bool isHovered2 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gradientmask('Hey I\'m Abdul Hafeez', style: AppTextStyles.headingXL),
          // Text('Hey I\'m Abdul Hafeez ', style: AppTextStyles.headingXL),
          H(height: 20),
          Text(
            'Flutter Developer & UI/UX Designer',
            style: AppTextStyles.headingL,
          ),
          H(height: 5),
          Text(
            'Designing and developing cross-platform solutions in Flutter.\n                 supported by secure Firebase services',
            style: AppTextStyles.body,
          ),
          H(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered1 = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered1 = false;
                  });
                },
                child: IconButton(
                  onPressed: () {
                    openUrl('https://github.com/hafi747');
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    color: isHovered1 ? Colors.deepOrange : MColors.background,
                    size: 30,
                  ),
                ),
              ),
              H(width: 6),
              MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered2 = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered2 = false;
                  });
                },
                child: IconButton(
                  onPressed: () {
                    openUrl(
                      'https://www.linkedin.com/in/abdul-hafeez-2225a5277?utm_source=share_via&utm_content=profile&utm_medium=member_android',
                    );
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: isHovered2 ? Colors.deepOrange : MColors.background,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          H(height: 30),
          RoundButton(
            text: 'Contact Me',
            onpressed: () {
              context.go('/contact');
            },
          ),
        ],
      ),
    );
  }
}
