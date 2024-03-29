import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts/style.dart';

class IconWidgetAnimation extends StatefulWidget {
  const IconWidgetAnimation({super.key, required this.icon});

  final IconData icon;

  @override
  State<IconWidgetAnimation> createState() => _IconWidgetAnimationState();
}

class _IconWidgetAnimationState extends State<IconWidgetAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> sizeAnimation;
  bool isSaved = false;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 250,
      ),
    );
    sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem(
          tween: Tween(begin: 25, end: 30),
          weight: 50,
        ),
        TweenSequenceItem(
          tween: Tween(begin: 30, end: 25),
          weight: 50,
        ),
      ],
    ).animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        isSaved ? controller.reverse() : controller.forward();
        setState(() => isSaved = !isSaved);
      },
      icon: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Icon(
            widget.icon,
            size: sizeAnimation.value,
            color: isSaved ? AppConsts.danger600 : AppConsts.neutral500,
          );
        },
      ),
    );
  }
}
