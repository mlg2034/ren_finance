import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage()
class TaxesPage extends StatelessWidget {
  const TaxesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Taxes Page'),),

    );
  }
}