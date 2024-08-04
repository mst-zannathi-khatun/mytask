import 'package:flutter/material.dart';

import '../style/coustom_colors.dart';
import '../style/coustom_textstyle.dart';
import '../widgets/textbuttonwidget.dart';
import '../widgets/textformfieldwidget.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});
  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
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
                    "assets/images/unlock.png",
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            const SizedBox(height: 16,),
            Text("Your new password must be different from previously used password", style: MyTaskTextStyle.smallTextStyle,),
            const SizedBox(height: 16,),
            const TextFormFieldWidget(prefixIcons: Icon(Icons.remove_red_eye_sharp), hintText: 'Enter your new passwords',),
            const SizedBox(height: 16,),
            const TextFormFieldWidget(prefixIcons: Icon(Icons.remove_red_eye_sharp), hintText: 'Confirm your new passwords',),
            const SizedBox(height: 175,),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetNewPasswordScreen()));
              },
              child: const TextButtonWidget(
                text: "SAVE",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
