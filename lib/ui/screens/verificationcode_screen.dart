import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytask/ui/screens/setnewpassword_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../style/coustom_colors.dart';
import '../style/coustom_textstyle.dart';
import '../widgets/textbuttonwidget.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});
  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
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
                    "assets/images/open.png",
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Please enter the 4 digit code sent to m.zannathi.k@gmail.com",
              style: MyTaskTextStyle.smallTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.white,
                  inactiveColor: Colors.black26,
                  inactiveFillColor: MyTaskThemeColor.greyColor,
                  selectedFillColor: Colors.white,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {});
                },
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
              ),
            ),
            const SizedBox(
              height: 270,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetNewPasswordScreen()));
              },
              child: const TextButtonWidget(
                text: "VERIFY",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
