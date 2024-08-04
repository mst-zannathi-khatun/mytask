import 'package:flutter/material.dart';
import 'package:mytask/ui/screens/splash_screen.dart';
import 'package:mytask/ui/style/coustom_colors.dart';

void main() {
  runApp(const MyTask());
}

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: MyTaskThemeColor.primaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}
