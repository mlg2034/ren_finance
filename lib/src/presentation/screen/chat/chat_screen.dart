import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/presentation/common_widgets/custom_text_field.dart';
import 'package:ren_finance_mobile/src/presentation/theme/color_theme.dart';
import 'package:ren_finance_mobile/src/presentation/theme/text_theme.dart';

import '../../common_widgets/animated_text_widget.dart';

@RoutePage()
class AIChatScreen extends StatelessWidget {
  const AIChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: AIPageMainWidget(),
      ),
    );
  }
}

class AIPageMainWidget extends StatefulWidget {
  const AIPageMainWidget({
    super.key,
  });

  @override
  State<AIPageMainWidget> createState() => _AIPageMainWidgetState();
}

class _AIPageMainWidgetState extends State<AIPageMainWidget> {
  late TextEditingController _messageTextEditingController;

  @override
  void initState() {
    _messageTextEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
        const  WelcomeTextWidget(),
          const Spacer(),
          CustomTextField(
            hintText: 'Write a message',
            controller: _messageTextEditingController,
          ),
        ],
      ),
    );
  }
}

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> welcomeText = [
      'Hello! My name is ',
      'Scrooge AI.',
      'I am your personal finance assistence. Please write me a message.'
    ];
    return AnimatedTextWidget(
      animatedMessage: welcomeText,
      animatedTextStyle: AppFonts.w200s16.copyWith(color: AppColors.green),
      animatedDuration: const Duration(seconds: 2),
    );
  }
}
