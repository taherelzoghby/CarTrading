import 'package:cars/core/consts/style.dart';
import 'package:cars/features/home/presentation/view/widgets/best_offers_bloc_consumer.dart';
import 'package:flutter/cupertino.dart';

class RecommendedForyouBody extends StatelessWidget {
  const RecommendedForyouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          AspectRatio(aspectRatio: AppConsts.aspectRatioTopSpace),
          //favourites car

          BestOffersBlocConsumer(),
        ],
      ),
    );
  }
}
