import 'package:cars/features/home/presentation/view/widgets/location_section.dart';
import 'package:cars/features/home/presentation/view/widgets/search_section.dart';
import 'package:flutter/material.dart';

class SearchLocationSection extends StatelessWidget {
  const SearchLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //location section
        LocationSection(),
        //search section
        SearchSection(),
      ],
    );
  }
}
