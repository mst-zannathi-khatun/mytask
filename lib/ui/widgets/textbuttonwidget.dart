import 'package:flutter/cupertino.dart';
import '../style/coustom_textstyle.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  const TextButtonWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
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
    );
  }
}
