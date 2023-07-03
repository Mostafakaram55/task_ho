
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/HomeView.dart';
import 'package:task_ho/Modules/PlansView/planView.dart';
import 'package:task_ho/Modules/ProfileView/profileview.dart';
import 'package:task_ho/Modules/Search_screen/SearchView.dart';
import 'package:task_ho/Modules/splashView/splash_view.dart';

import '../../Modules/Home_layout/home_screen.dart';

class NameRout {
  static const splashRoute = '/';
  static const homeRoute = '/homeView';
  static const searchRoute = '/searchRoute';
  static const plansRoute = '/plansRoute';
  static const profileRoute = '/profileView';
  static const registerRoute = '/Register';
  static const loginRoute = '/Register';
  static const editProfile = '/editProfile';
}
class RouteGenerator {
  static Route<dynamic> getRout(RouteSettings settings) {
    switch (settings.name) {
      case NameRout.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case NameRout.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case NameRout.searchRoute:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case NameRout.plansRoute:
        return MaterialPageRoute(builder: (_) => const PlansView());
      case NameRout.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileView());
    }
    return noFoundRoute();
  }

  static Route<dynamic> noFoundRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text('NO FOUND ROUT'),
          ),
        ));
  }
}