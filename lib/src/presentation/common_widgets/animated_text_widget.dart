import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatefulWidget {
  final List<String> animatedMessage;
  final String? boldAnimatedMessage;
  final TextStyle animatedTextStyle;
  final Duration animatedDuration;

  const AnimatedTextWidget({
    super.key,
    required this.animatedMessage,
    required this.animatedTextStyle,
    required this.animatedDuration,
    this.boldAnimatedMessage,
  });

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with TickerProviderStateMixin {
  late ValueNotifier<List<String>> messageBuilder;
  late ValueNotifier<String?> boldAnimatedMessageNotifier;
  late AnimationController _animationController;
  late Animation<int> _characterCount;

  void _initializeAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: widget.animatedDuration);
    _characterCount =
        StepTween(begin: 0, end: messageBuilder.value.join().length).animate(
          CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
        );
    _animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    messageBuilder = ValueNotifier(widget.animatedMessage);
    boldAnimatedMessageNotifier = ValueNotifier(widget.boldAnimatedMessage);
    _initializeAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return ValueListenableBuilder<List<String>>(
          valueListenable: messageBuilder,
          builder: (context, value, child) {
            return Text(
              value.join().substring(0, _characterCount.value),
              style: widget.animatedTextStyle,
            );
          },
        );
      },
    );
  }
}
