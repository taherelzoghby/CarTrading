import 'package:cars/core/consts/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'section_facilities.dart';
import 'section_fields_filter.dart';
import 'section_price_range.dart';
import 'show_result_filter_button.dart';

class FilterBody extends StatelessWidget {
  const FilterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: const Column(
        children: [
          SectionFieldsFilter(),
          AspectRatio(aspectRatio: AppConsts.aspectRatio40on1),
          SectionPriceRange(),
          AspectRatio(aspectRatio: AppConsts.aspectRatio40on1),
          SectionFacilities(),
          AspectRatio(aspectRatio: AppConsts.aspectRatio40on1),
          ShowResultFilterButton(),
        ],
      ),
    );
  }
}