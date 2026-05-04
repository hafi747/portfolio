import 'package:flutter/material.dart';
import 'package:portfolio/config/color/gradientmask.dart';
import 'package:portfolio/config/sizeadjust/resize.dart';
import 'package:portfolio/config/sizeadjust/styletype.dart';
import 'package:portfolio/views/screens/progressbar.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gradientmask(' My Skills', style: AppTextStyles.headingL),

            H(height: 20),
            Text(
              'Flutter, Dart, Firebase, Git, REST APIs, UI/UX Design',
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
            ),
            H(height: 15),
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
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isHovered1 ? Colors.deepOrange : Colors.grey,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.developer_mode_outlined,
                            color: const Color.fromARGB(255, 193, 65, 26),
                            size: 30,
                          ),
                          H(height: 10),
                          Text('Frontend', style: AppTextStyles.headingL),
                          SkillsBar(skill: 'Flutter(UI)', proficiency: 0.9),
                          SkillsBar(
                            skill: 'Responsive Design',
                            proficiency: 0.7,
                          ),
                          SkillsBar(
                            skill: 'Dart(Frontend Logic)',
                            proficiency: 0.9,
                          ),
                          SkillsBar(skill: 'Flutter Web', proficiency: 0.85),
                        ],
                      ),
                    ),
                  ),
                ),
                H(width: 20),
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
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isHovered2 ? Colors.deepOrange : Colors.grey,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.backup_outlined,
                            color: const Color.fromARGB(255, 193, 65, 26),
                            size: 30,
                          ),
                          H(height: 10),
                          Text('Backend', style: AppTextStyles.headingL),
                          SkillsBar(skill: 'Node.js', proficiency: 0.7),
                          SkillsBar(
                            skill: 'Firebase(Auth, Firestore, Functions)',
                            proficiency: 0.9,
                          ),
                          SkillsBar(
                            skill: 'Dart(Backend Logic)',
                            proficiency: 0.7,
                          ),
                          SkillsBar(skill: 'Flutter Web', proficiency: 0.85),
                        ],
                      ),
                    ),
                  ),
                ),
                H(width: 20),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovered3 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovered3 = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isHovered3 ? Colors.deepOrange : Colors.grey,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mobile_screen_share_outlined,
                            color: const Color.fromARGB(255, 193, 65, 26),
                            size: 30,
                          ),
                          H(height: 10),
                          Text('Mobile & Tools', style: AppTextStyles.headingL),
                          SkillsBar(skill: 'Flutter(Mobile)', proficiency: 0.9),
                          SkillsBar(
                            skill: 'State Management',
                            proficiency: 0.8,
                          ),
                          SkillsBar(
                            skill: 'Firebase(Analytics, Crashlytics)',
                            proficiency: 0.7,
                          ),
                          SkillsBar(skill: 'Git & GitHub', proficiency: 0.85),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            H(height: 30),
          ],
        ),
      ),
    );
  }
}
