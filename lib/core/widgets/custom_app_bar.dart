import 'package:cars/core/consts/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.leadingOnTap,
    required this.title,
    this.trailingOnTap,
    this.trailingWidget,
    this.image,
  });

  final void Function()? leadingOnTap;
  final String title;
  final void Function()? trailingOnTap;
  final Widget? trailingWidget;
  final String? image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(4.sp),
      child: Row(
        children: [
          ///arrow back
          leadingOnTap == null
              ? Container()
              : Row(
                  children: [
                    IconButton(
                      onPressed: leadingOnTap,
                      icon: const Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: size.width * .2.w),
                  ],
                ),

          ///set filter
          image == null
              ? Text(
                  title,
                  style: AppConsts.style20.copyWith(
                    color: AppConsts.neutral900,
                  ),
                )
              : Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        image!,
                        height: size.height * .075.h,
                      ),
                    ),
                    SizedBox(width: size.width * .2.w),
                    Text(
                      title,
                      style: AppConsts.style20.copyWith(
                        color: AppConsts.neutral900,
                      ),
                    ),
                  ],
                ),
          const Spacer(),

          ///reset
          trailingWidget == null
              ? Container()
              : TextButton(
                  onPressed: trailingOnTap,
                  child: trailingWidget!,
                ),
        ],
      ),
    );
  }
}