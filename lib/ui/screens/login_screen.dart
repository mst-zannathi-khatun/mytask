import 'package:flutter/material.dart';
import 'package:mytask/ui/style/coustom_textstyle.dart';
import '../widgets/textformfieldwidget.dart';
import '../widgets/textbuttonwidget.dart';
import 'forgotpassword_screen.dart';

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
              height: 6,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPasswordScreen()));
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot your password?",
                  style: MyTaskTextStyle.smallTextStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 50, // Adjusted spacing as needed
            ),
            const TextButtonWidget(
              text: "LOG IN",
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

