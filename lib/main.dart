import 'package:drawer_app/home.dart';
import 'package:drawer_app/pages/bottom.dart';
import 'package:drawer_app/pages/drawer.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/dashboard': (context) => const FancyBottomNavBarRun(),
        '/drawer': (context) => const MyHomePage(),
      },
    );
  }
}
