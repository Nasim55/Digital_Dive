import 'package:digital_dive/screen/choice_register_type.dart';
import 'package:digital_dive/screen/home_page.dart';
import 'package:digital_dive/screen/login_screen.dart';
import 'package:digital_dive/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      routes: {
        '/': (context) => const HomePage(),
        SplashScreen.routeNamed: (context) => const SplashScreen(),
        ChoiceRegisterType.routeNamed: (context) => const ChoiceRegisterType(
              activePage: 4,
            ),
        LoginScreen.routeNamed: (context) => LoginScreen(),
      },
    );
  }
}
