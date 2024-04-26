import 'package:cars/core/consts/routesPage.dart';
import 'package:cars/core/consts/strings.dart';
import 'package:cars/core/consts/style.dart';
import 'package:cars/core/widgets/customButton.dart';
import 'package:cars/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhoneNumberBody extends StatelessWidget {
  const PhoneNumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AspectRatio(aspectRatio: AppConsts.aspectRatio16on3),
          const Text(
            StringsEn.yourPhoneNumber,
            style: AppConsts.style16White,
          ),
          const AspectRatio(aspectRatio: AppConsts.aspectRatio40on1),
          const CustomTextFormField(
            hint: StringsEn.enterYourPhone,
            perfixIcon: Icon(
              Icons.phone,
              color: AppConsts.neutral500,
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspectRatio16on5),
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.changePhoneNumberLabel,
              styleText: AppConsts.style16White.copyWith(
                fontWeight: FontWeight.w600,
              ),
              onTap: () => GoRouter.of(context).push(verificationPhonePath),
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspectRatio24on2),
        ],
      ),
    );
  }
}
