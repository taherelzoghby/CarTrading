import 'package:cars/core/consts/style.dart';
import 'package:flutter/material.dart';

import '../../../../../core/consts/strings.dart';
import 'tile_settings.dart';

class ReceiveMarketingWidget extends StatelessWidget {
  const ReceiveMarketingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileSetting(
      leading: StringsEn.receiveMarketing,
      trailing: TextButton(
        onPressed: () {},
        child: Text(
          'English',
          style: AppConsts.style12.copyWith(
            color: Theme.of(context).canvasColor,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}