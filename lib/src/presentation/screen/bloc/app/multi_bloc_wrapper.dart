import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/bloc/post/create_post/create_post_bloc.dart';
import 'package:ren_finance_mobile/src/shared/services/locator_service.dart';

class MultiBlocWrapper extends StatelessWidget {
  final Widget child;
  const MultiBlocWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CreatePostBloc(sl())),
      ],
      child: Builder(builder: (context) {
        return child;
      }),
    );
  }
}
