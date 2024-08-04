import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../style/coustom_colors.dart';
import '../style/coustom_textstyle.dart';
import '../widgets/textbuttonwidget.dart';
import '../widgets/textformfieldwidget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Container(
                  height: 283,
                  width: 283,
                  decoration: BoxDecoration(
                    color: MyTaskThemeColor.greyColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/lock.png",
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            "Please enter your email address to recover verifications code.",
            style: MyTaskTextStyle.smallTextStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          const TextFormFieldWidget(
            prefixIcons: Icon(Icons.email_rounded),
            hintText: "Enter your email address",
          ),
          const SizedBox(
            height: 200,
          ),
          const TextButtonWidget(
            text: "SEND",
          ),
        ],
      ),
    ));
  }
}
