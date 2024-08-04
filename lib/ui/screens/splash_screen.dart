import 'package:flutter/material.dart';
import 'package:mytask/ui/screens/login_screen.dart';
import '../style/coustom_textstyle.dart';
import '../widgets/elevatedbuttonwidget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Be Organized",
            style: MyTaskTextStyle.headTextStyle,
          ),
          Text(
            "Start Now",
            style: MyTaskTextStyle.secondTextStyle,
          ),
          const SizedBox(
            height: 150,
          ),
          Center(
            child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset("assets/images/logo.png")),
          ),
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButtonWidget(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              buttonText: "LOG IN",
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButtonWidget(
              onPressed: () {},
              buttonText: "SING IN",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              "Don't have an account?",
              style: MyTaskTextStyle.smallTextStyle,
            ),
          )
        ],
      ),
    ));
  }
}
