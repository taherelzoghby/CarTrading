import 'package:cars/core/consts/strings.dart';
import 'package:cars/core/consts/style.dart';
import 'package:cars/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'recent_searchs.dart';
import 'result_section.dart';
import 'search_field.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        const AspectRatio(aspectRatio: AppConsts.aspectRatioTopSpace),

        ///section search field
        const SearchField(),
        SizedBox(height: size.height * .015.h),

        ///section result
        BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            return context.read<SearchCubit>().initial
                ? RecentSearch(
                    tileHint: StringsEn.recentSearches,
                  )
                : const SectionResult();
          },
        ),
      ],
    );
  }
}