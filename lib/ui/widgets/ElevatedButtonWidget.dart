import 'package:flutter/material.dart';

import '../style/coustom_colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const ElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: MyTaskThemeColor.lightBlack,
      ),
    );
  }
}
