import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/theme/color_theme.dart';
import 'package:ren_finance_mobile/src/presentation/theme/text_theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final double borderRadius;
  final double verticalPadding;
  final double horizontalPadding;
  final int? maxLines;
  const CustomTextField({
    this.controller,
    this.verticalPadding = 5,
    this.horizontalPadding = 16,
    this.borderRadius = 12,
    super.key,
    this.maxLines,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppFonts.w200s16.copyWith(color: AppColors.grey),
        filled: true,
        fillColor: AppColors.lightGrey,
        contentPadding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
