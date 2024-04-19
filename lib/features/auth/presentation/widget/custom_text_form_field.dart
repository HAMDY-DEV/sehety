import 'package:flutter/material.dart';
import 'package:sehety/core/util/colors.dart';
import 'package:sehety/core/util/text_style.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    required this.prefixIcon,
    this.validator,
    this.obscureText,
  });
  String hintText;
  Widget suffixIcon;
  Widget prefixIcon;
  String? Function(String?)? validator;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      validator: validator,
      decoration: InputDecoration(
          hintStyle: getSmallStyle(context, color: AppColors.greyColor),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon),
    );
  }
}
