import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/common_widgets/custom_text_field.dart';
import 'package:ren_finance_mobile/src/presentation/theme/color_theme.dart';
import 'package:ren_finance_mobile/src/presentation/theme/text_theme.dart';
import 'package:ren_finance_mobile/src/presentation/widgets/info_widgets/info_card_widet.dart';
import 'package:ren_finance_mobile/src/shared/app_router.dart';

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
          child: Row(
            children: [
              Text(
                'News',
                style: AppFonts.w400s36.copyWith(color: AppColors.black),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  context.router.push(CreatePostRoute());
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: const CustomTextField(
            hintText: 'search',
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
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
