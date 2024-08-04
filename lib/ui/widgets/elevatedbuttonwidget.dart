import 'package:flutter/material.dart';

import '../style/coustom_colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: MyTaskThemeColor.lightBlack,
      ),
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
