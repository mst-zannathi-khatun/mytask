import 'package:flutter/material.dart';
import '../style/coustom_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final Widget prefixIcons;
  final String hintText;

  const TextFormFieldWidget({
    super.key,
    required this.prefixIcons,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: MyTaskThemeColor.greyColor,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        prefixIcon: prefixIcons,
        prefixIconColor: Colors.black26,
        contentPadding: const EdgeInsets.all(0),
      ),
    );
  }
}
