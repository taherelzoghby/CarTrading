import 'package:cars/features/auth/presentation/view/create_account_view.dart';
import 'package:cars/features/auth/presentation/view/create_new_pass_view.dart';
import 'package:cars/features/auth/presentation/view/login_view.dart';
import 'package:cars/features/auth/presentation/view/reset_pass_view.dart';
import 'package:cars/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';
import 'package:cars/features/car_details/presentation/view/car_details_view.dart';
import 'package:cars/features/car_details/presentation/view_model/changed_carsoul_cubit/changed_carsoul_cubit.dart';
import 'package:cars/features/chats/presentation/view/chat_support_view.dart';
import 'package:cars/features/edit_profile/presentation/view/edit_profile_view.dart';
import 'package:cars/features/favourites/presentation/view/favourites_view.dart';
import 'package:cars/features/home/presentation/view/best_offers_view.dart';
import 'package:cars/features/home/presentation/view/home_view.dart';
import 'package:cars/features/home/presentation/view/recommended_for_you.dart';
import 'package:cars/features/location/presentation/view/search_location_view.dart';
import 'package:cars/features/nav/presentation/view/nav_view.dart';
import 'package:cars/features/nav/presentation/view_model/nav_cubit/nav_bar_cubit.dart';
import 'package:cars/features/notifications/presentation/view/notifications_view.dart';
import 'package:cars/features/onBoarding/presentation/view/on_boarding_view.dart';
import 'package:cars/features/search/presentation/view/search_view.dart';
import 'package:cars/features/settings/presentation/view/settings_view.dart';
import 'package:cars/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/view_model/change_current_sign_up_cubit/change_sign_up_current_page_cubit.dart';
import '../helper/custom_animation.dart';

const String splashPath = '/';
const String boardPath = '/board';
const String loginPath = '/loginPath';
const String createAccountPath = '/createAccountPath';
const String resetPassPath = '/ResetPassPath';
const String createNewPass = '/CreateNewPassPath';
const String navPath = '/navPath';
const String homePath = '/home';
const String bestOffersPath = '/bestOffersPath';
const String recommendedForYouPath = '/recommendedForYou';
const String createPassPath = '/CreatePassPath';
const String favouritesPath = '/favouritesPath';
const String searchPath = '/searchPath';
const String locationPath = '/locationPath';
const String carDetailsPath = '/carDetailsPath';
const String chatPath = '/chatPath';
const String editProfilePath = '/editProfilePath';
const String settingsPath = '/settingsPath';
const String notificationPath='/notificationPath';
// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: splashPath,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: loginPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const LoginView(),
      ),
    ),
    GoRoute(
      path: resetPassPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ResetPassView(),
      ),
    ),
    GoRoute(
      path: createAccountPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => ChangeSignUpCurrentPageCubit(),
            ),
            BlocProvider(
              create: (_) => SignUpCubit(),
            ),
          ],
          child: const CreateAccountView(),
        ),
      ),
    ),
    GoRoute(
      path: createPassPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const CreatePassView(),
      ),
    ),
    GoRoute(
      path: boardPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const OnBoardingView(),
      ),
    ),
    GoRoute(
      path: navPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: BlocProvider(
          create: (_) => NavBarCubit(),
          child: const NavView(),
        ),
      ),
    ),
    GoRoute(
      path: homePath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const HomeView(),
      ),
    ),
    GoRoute(
      path: bestOffersPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const BestOffersView(),
      ),
    ),
    GoRoute(
      path: recommendedForYouPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const RecommendedForyouView(),
      ),
    ),
    GoRoute(
      path: chatPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ChatView(),
      ),
    ),
    GoRoute(
      path: favouritesPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const FavouritesView(),
      ),
    ),
    GoRoute(
      path: searchPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SearchView(),
      ),
    ),
    GoRoute(
      path: locationPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SearchLocationView(),
      ),
    ),
    GoRoute(
      path: carDetailsPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: BlocProvider(
          create: (_) => ChangedCarsoulCubit(),
          child: const CarDetailsView(),
        ),
      ),
    ),
    GoRoute(
      path: editProfilePath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const EditProfileView(),
      ),
    ),
    GoRoute(
      path: settingsPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SettingsView(),
      ),
    ),
    GoRoute(
      path: notificationPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const NotificationsView(),
      ),
    ),
  ],
);
