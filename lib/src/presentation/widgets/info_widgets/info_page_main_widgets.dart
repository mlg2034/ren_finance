import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/common_widgets/app_text_field.dart';
import 'package:ren_finance_mobile/src/presentation/theme/color_theme.dart';
import 'package:ren_finance_mobile/src/presentation/theme/text_theme.dart';
import 'package:ren_finance_mobile/src/presentation/widgets/info_widgets/info_card_widet.dart';

class InfoPageMainWidget extends StatelessWidget {
  const InfoPageMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'News',
            style: AppFonts.w400s36.copyWith(color: AppColors.black),
          ),
        ),
        SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: const AppTextField(
            hintText: 'search',
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context , index){
            return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: InfoCardWidget(),
          );
          }),
        ),
        
      ],
    );
  }
}
