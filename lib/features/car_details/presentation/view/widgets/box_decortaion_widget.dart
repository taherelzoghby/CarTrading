import 'package:cars/core/consts/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxDecorationWidget extends StatelessWidget {
  const BoxDecorationWidget({
    super.key,
    required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConsts.mainDecoration.copyWith(
        border: Border.all(
          color: Theme.of(context).canvasColor.withOpacity(.075),
        ),
      ),
      child: Padding(
        padding: AppConsts.padding15H10V,
        child: widget,
      ),
    );
  }
}
