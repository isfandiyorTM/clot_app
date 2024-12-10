import 'package:clot/core/route/route_names.dart';
import 'package:clot/features/auth/sign_up/about_customer.dart';
import 'package:clot/features/auth/sign_in/forgot_password.dart';
import 'package:clot/features/auth/sign_in/sent_email.dart';
import 'package:clot/features/auth/sign_in/sign_in.dart';
import 'package:clot/features/bottom_nav_bar.dart';
import 'package:clot/features/home/home_page.dart';
import 'package:clot/features/home/shop_by_categories_page.dart';
import 'package:clot/features/intro/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../features/auth/sign_in/sign_in_password.dart';
import '../../features/auth/sign_up/create_account.dart';
import '../../features/home/categories_page.dart';
import '../../help.dart';

class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.signInPassword:
        return MaterialPageRoute(builder: (_) => const SignInPassword());
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RouteNames.createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAccount());
      case RouteNames.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case RouteNames.sentEmail:
        return MaterialPageRoute(builder: (_) => const SentEmail());
      case RouteNames.aboutCustomer:
        return MaterialPageRoute(builder: (_) =>  AboutCustomer());
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (_) =>   const SplashScreen());
      case RouteNames.bottomNavbar:
        return MaterialPageRoute(builder: (_) =>    BottomNavBar());
      case RouteNames.shopByCategories:
        return MaterialPageRoute(builder: (_) =>    const ShopByCategoriesPage());
      case RouteNames.categories:
        String category = routeSettings.arguments as String;
        return MaterialPageRoute(builder: (_) =>   Categories(category: category,));


      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}