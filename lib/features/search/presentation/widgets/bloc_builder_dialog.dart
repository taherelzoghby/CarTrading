import 'package:cars/core/consts/strings.dart';
import 'package:cars/core/consts/style.dart';
import 'package:cars/core/widgets/custom_radio_list_tile.dart';
import 'package:cars/features/search/domain/entities/search_entity.dart';
import 'package:cars/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderDialog extends StatelessWidget {
  const BlocBuilderDialog({
    super.key,
    required this.list,
    required this.status,
  });

  final List<SearchFilterEntity> list;
  final String status;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        SearchCubit bloc = BlocProvider.of<SearchCubit>(context);
        return Dialog(
          surfaceTintColor: Theme.of(context).splashColor.withOpacity(.3),
          backgroundColor: Theme.of(context).splashColor,
          shape: AppConsts.dialogShape,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: list
                .map(
                  (e) => CustomRadiusListTile<String>(
                    label: e.brand!,
                    value: e.brand!,
                    groupValue: status == StringsEn.condition
                        ? bloc.condition
                        : status == StringsEn.brand
                            ? bloc.brand
                            : bloc.bodyType,
                    onChanged: (value) => bloc.changeValue(
                      value: value!,
                      status: status,
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
