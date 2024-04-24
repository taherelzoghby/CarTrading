import 'package:cars/core/consts/strings.dart';
import 'package:cars/core/consts/style.dart';
import 'package:flutter/material.dart';
import 'identities_list.dart';
import 'identity_type_section.dart';

class SectionChooseYourIdentityType extends StatelessWidget {
  const SectionChooseYourIdentityType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringsEn.chooseYourIdentityType,
          style: AppConsts.style16White,
        ),
        const AspectRatio(aspectRatio: AppConsts.aspectRatio40on1),
        //id card   - passport - Driving license
        const IdentitiesList(),
        const AspectRatio(aspectRatio: AppConsts.aspectRatio40on1),
        const IdentityTypeWidget(),
      ],
    );
  }
}