import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/theme/color_theme.dart';
import 'package:ren_finance_mobile/src/presentation/theme/text_theme.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  const AppTextField({
    
    super.key, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppFonts.w200s16.copyWith(color: AppColors.grey),
          filled: true,
          fillColor: AppColors.lightGrey,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:const BorderSide(color: Colors.transparent))),
    );
  }
}
