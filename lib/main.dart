// /lib/main.dart

import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'theme.dart';

void main() {
  runApp(const OneDayCityExplorerApp());
}

class OneDayCityExplorerApp extends StatelessWidget {
  const OneDayCityExplorerApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const WelcomeScreen(),
    );
  }
}
