import 'package:flutter/material.dart';
import 'package:mytask/ui/screens/setnewpassword_screen.dart';

import '../style/coustom_textstyle.dart';
import '../widgets/textbuttonwidget.dart';
import '../widgets/textformfieldwidget.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create an account",
              style: MyTaskTextStyle.headTextStyle,
            ),
            const SizedBox(
              height: 220,
            ),
            const Row(
              children: [
                Expanded(
                  child: TextFormFieldWidget(
                    prefixIcons: Icon(Icons.person),
                    hintText: 'Enter first name',
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormFieldWidget(
                    prefixIcons: Icon(Icons.person),
                    hintText: 'Enter last name',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const TextFormFieldWidget(
              prefixIcons: Icon(Icons.remove_red_eye_sharp),
              hintText: 'Enter your password',
            ),
            const SizedBox(
              height: 8,
            ),
            const TextFormFieldWidget(
              prefixIcons: Icon(Icons.remove_red_eye_sharp),
              hintText: 'Confirm your password',
            ),
            const SizedBox(
              height: 8,
            ),
            const TextFormFieldWidget(
              prefixIcons: Icon(Icons.email),
              hintText: 'Enter your email',
            ),
            const SizedBox(
              height: 8,
            ),
            const TextFormFieldWidget(
              prefixIcons: Icon(Icons.phone),
              hintText: 'Enter your phone',
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
              },
              child: const TextButtonWidget(
                text: "SIGN UP",
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
                child: Text(
              "or create account using social media",
              style: MyTaskTextStyle.smallTextStyle,
            )),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/facebook.png"),
                ),
                const SizedBox(
                  width: 8, // Add some space between the icons
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/gmail.png"),
                ),
                const SizedBox(
                  width: 8, // Add some space between the icons
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/twitter.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
