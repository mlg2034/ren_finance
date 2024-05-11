import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/screen/bloc/app/multi_bloc_wrapper.dart';
import 'package:ren_finance_mobile/src/shared/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();

    return MultiBlocWrapper(
      child: MaterialApp.router(
        routerConfig: _router.config(),
      ),
    );
  }
}
