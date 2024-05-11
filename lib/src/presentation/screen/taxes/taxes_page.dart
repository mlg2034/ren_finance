import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/shared/app_router.dart';

@RoutePage()
class TaxesPage extends StatelessWidget {
  const TaxesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: const Text('chat page'),
          onTap: () {
            context.router.push(const AIChatRoute());
          },
        ),
      ),
    );
  }
}
