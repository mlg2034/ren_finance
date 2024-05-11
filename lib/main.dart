import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/core/app.dart';
import 'package:ren_finance_mobile/src/shared/services/locator_service.dart';

Future<void> main() async {
  await locatorServices();
  runApp(const MyApp());
}
