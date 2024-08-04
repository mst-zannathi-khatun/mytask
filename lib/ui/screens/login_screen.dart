import 'package:flutter/material.dart';
import 'package:mytask/ui/style/coustom_textstyle.dart';
import '../widgets/TextFormFieldWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello!",
              style: MyTaskTextStyle.headTextStyle,
            ),
            Text(
              "Login Your Account",
              style: MyTaskTextStyle.secondTextStyle,
            ),
            const SizedBox(
              height: 220,
            ),
            const SizedBox(
              width: double.infinity,
              child: TextFormFieldWidget(
                prefixIcons: Icon(Icons.email_rounded),
                hintText: "Enter your email",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: double.infinity,
              child: TextFormFieldWidget(
                prefixIcons: Icon(Icons.remove_red_eye_sharp),
                hintText: "Enter your password",
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot your password?",
                style: MyTaskTextStyle.smallTextStyle,
              ),
            ),
            const SizedBox(
              height: 40, // Adjusted spacing as needed
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "LOG IN",
                  style: MyTaskTextStyle.buttonTextStyle,
                ),
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  "assets/images/arrow.png",
                  height: 40,
                  width: 40,
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: MyTaskTextStyle.smallTextStyle,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create",
                    style: MyTaskTextStyle.buttonCreateText,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
