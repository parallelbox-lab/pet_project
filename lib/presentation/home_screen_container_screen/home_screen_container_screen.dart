import 'bloc/home_screen_container_bloc.dart';
import 'models/home_screen_container_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/cart_one_page/cart_one_page.dart';
import 'package:owoeye_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:owoeye_s_application1/presentation/profile_page/profile_page.dart';
import 'package:owoeye_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainerScreen extends StatelessWidget {
  HomeScreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenContainerBloc>(
        create: (context) => HomeScreenContainerBloc(HomeScreenContainerState(
            homeScreenContainerModelObj: HomeScreenContainerModel()))
          ..add(HomeScreenContainerInitialEvent()),
        child: HomeScreenContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenContainerBloc, HomeScreenContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homeScreenPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Wallet:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.cartOnePage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      case AppRoutes.cartOnePage:
        return CartOnePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
