import 'package:go_router/go_router.dart';
import 'package:portfolio/views/screens/about.dart';
import 'package:portfolio/views/screens/contacts.dart';
import 'package:portfolio/views/screens/frontpage.dart';
import 'package:portfolio/views/screens/home.dart';
import 'package:portfolio/views/screens/layout.dart';
import 'package:portfolio/views/screens/projects.dart';
import 'package:portfolio/views/screens/skills.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return Layout(child: child); // 👈 fixed header + dynamic body
        },
        routes: [
          GoRoute(path: '/', builder: (context, state) => FrontPageScreen()),

          GoRoute(path: '/about', builder: (context, state) => AboutScreen()),
          GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
          GoRoute(
            path: '/projects',
            builder: (context, state) => ProjectsScreen(),
          ),
          GoRoute(path: '/skills', builder: (context, state) => SkillsScreen()),
          GoRoute(
            path: '/contact',
            builder: (context, state) => ContactsScreen(),
          ),
        ],
      ),
    ],
  );
}
