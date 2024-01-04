
import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/theme/color_theme.dart';
import 'package:ren_finance_mobile/src/presentation/theme/text_theme.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          color: AppColors.lightGrey, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '04.01.2024',
                  style: AppFonts.w100s12.copyWith(color: AppColors.grey),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.remove_red_eye_sharp,
                  size: 12,
                  color: AppColors.grey,
                ),
              ),
              Text('0', style: AppFonts.w100s12.copyWith(color: AppColors.grey))
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              'Всеобщие декларирование нужно в целях снижения размеров теневой экономики населения РК .',
              style: AppFonts.w100s16,
            ),
          )
        ],
      ),
    );
  }
}
