import 'package:flutter/material.dart';
import 'package:portfolio/config/color/gradientmask.dart';
import 'package:portfolio/config/sizeadjust/resize.dart';
import 'package:portfolio/config/sizeadjust/styletype.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;
  bool isHovered4 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Gradientmask('About Me', style: AppTextStyles.headingXL),
              ),
              Text(
                ' Crafting high-performance mobile experiences with Flutter,integrated with \n                           scalable and cloud-based Firebase solutions.',
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
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isHovered1 ? Colors.deepOrange : Colors.grey,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                            Text(
                              'Flutter Development',
                              style: AppTextStyles.body,
                            ),
                            H(height: 10),
                            Text(
                              'Building cross-platform mobile applications with Flutter.',
                              style: AppTextStyles.rbody,
                              textAlign: TextAlign.center,
                            ),
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
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isHovered2 ? Colors.deepOrange : Colors.grey,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        //
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Icon(
                              Icons.design_services_outlined,
                              color: const Color.fromARGB(255, 193, 65, 26),
                              size: 30,
                            ),
                            H(height: 10),
                            Text('UI/UX Design', style: AppTextStyles.body),
                            H(height: 10),
                            Text(
                              'Creating intuitive and engaging user interfaces with Flutter.',
                              style: AppTextStyles.rbody,
                              textAlign: TextAlign.center,
                            ),
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
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isHovered3 ? Colors.deepOrange : Colors.grey,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.integration_instructions_outlined,
                              color: const Color.fromARGB(255, 193, 65, 26),
                              size: 30,
                            ),
                            H(height: 10),
                            Text('AI Integration', style: AppTextStyles.body),
                            H(height: 10),
                            Text(
                              'Integrating artificial intelligence capabilities into Flutter applications.',
                              style: AppTextStyles.rbody,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              H(height: 20),
              Center(
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovered4 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovered4 = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isHovered4 ? Colors.deepOrange : Colors.grey,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.backup_outlined,
                            color: const Color.fromARGB(255, 193, 65, 26),
                            size: 30,
                          ),
                          H(height: 10),
                          Text(
                            'Backend Development',
                            style: AppTextStyles.body,
                          ),
                          H(height: 10),
                          Text(
                            'Building robust and scalable backend services for Flutter applications.',
                            style: AppTextStyles.rbody,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              H(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
