import 'package:flutter/material.dart';
import 'package:portfolio/config/routes/approuter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // theme: ThemeData(
      //   useMaterial3: true,
      //   // scaffoldBackgroundColor: Colors.white,
      //   appBarTheme: AppBarTheme(
      //     // backgroundColor: Colors.black,
      //     foregroundColor: Colors.white,
      //     surfaceTintColor: Colors.transparent,
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
