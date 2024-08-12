import 'package:flutter/material.dart';
import '../style/coustom_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final Widget? prefixIcons;
  final String hintText;
  final int? maxLines;
  final TextAlign hintTextAlign;

  const TextFormFieldWidget({
    super.key,
    this.prefixIcons,
    this.maxLines,
    required this.hintText,
    this.hintTextAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: hintTextAlign,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: MyTaskThemeColor.greyColor,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        filled: true,
        prefixIcon: prefixIcons,
        prefixIconColor: Colors.black26,
        contentPadding: const EdgeInsets.all(8),
        alignLabelWithHint: true,
      ),
      maxLines: maxLines,
    );
  }
}
