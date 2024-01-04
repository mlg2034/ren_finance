import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/widgets/info_widgets/info_page_main_widgets.dart';

@RoutePage()
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: InfoPageMainWidget(),
      )),
    );
  }
}
