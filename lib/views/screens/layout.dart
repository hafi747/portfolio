import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/config/color/colors.dart';
import 'package:portfolio/config/sizeadjust/resize.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 19, 34),

      // ================= APP BAR =================
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,

        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Abdul ',
                  style: TextStyle(
                    fontSize: 24,
                    color: MColors.background,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Hafeez',
                  style: TextStyle(
                    fontSize: 24,
                    color: MColors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),

        actions: [
          navItem(context, 'Home', '/home', location),
          H(width: 10),
          navItem(context, 'About', '/about', location),
          H(width: 10),
          navItem(context, 'Skills', '/skills', location),
          H(width: 10),
          navItem(context, 'Projects', '/projects', location),
          H(width: 10),
          navItem(context, 'Contact', '/contact', location),
          H(width: 20),
        ],
      ),

      // ================= BODY =================
      body: child,
    );
  }

  // ================= NAV ITEM =================
  Widget navItem(
    BuildContext context,
    String text,
    String route,
    String location,
  ) {
    final isSelected = location == route;

    return InkWell(
      onTap: () => context.go(route),
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 250),
        style: TextStyle(
          fontSize: 20,
          color: isSelected ? MColors.red : MColors.background,
          fontWeight: FontWeight.bold,
        ),
        child: Text(text),
      ),
    );
  }
}
