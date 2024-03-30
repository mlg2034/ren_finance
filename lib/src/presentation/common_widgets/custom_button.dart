import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/theme/color_theme.dart';
import 'package:ren_finance_mobile/src/presentation/theme/text_theme.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Widget? child;
  final Function()? onTap;
  const CustomButton({this.title, this.onTap, super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.purple,
          borderRadius: BorderRadius.circular(8),
        ),
        child: child ??
            Text(
              title ?? '',
              style: AppFonts.w200s16.copyWith(color: AppColors.white),
            ),
      ),
    );
  }
}
