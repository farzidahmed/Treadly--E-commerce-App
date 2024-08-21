import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treadly1/global_widget/custom_nav_bar.dart';
import 'package:treadly1/routs/routes_names.dart';
import 'package:treadly1/views/auth_screen/login_screen.dart';
import 'package:treadly1/views/auth_screen/signup_screen.dart';
import 'package:treadly1/views/cart_screen/cart_screen.dart';
import 'package:treadly1/views/favorite_screen/favorite_screen.dart';
import 'package:treadly1/views/home_screen/home_screen.dart';
import 'package:treadly1/views/home_screen/product_details.dart';
import 'package:treadly1/views/intro_screen/intro_screen.dart';
import 'package:treadly1/views/order_history/order_history.dart';
import 'package:treadly1/views/profile_screen/profile_screen.dart';
import 'package:treadly1/views/splash_screen/splash_screen.dart';

class Routes{
  static Route<dynamic>generateRoute( RouteSettings setting){
    switch(setting.name){
      case RouteNames.splash_screen:
        return MaterialPageRoute(builder: (BuildContext context)=> const SplashScreen());
      case RouteNames.login_screen:
        return MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen());
      case RouteNames.signup_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const SingUpScreen());
      case RouteNames.intro_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const Onboarding());
      case RouteNames.cart_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const CartScreen());
      case RouteNames.favorite_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const FavoriteScreen());
      case RouteNames.navBar_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const CustomNavbar());
        case RouteNames.home_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const HomeScreen());
      case RouteNames.orderHistory_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const OrderHistory());
      case RouteNames.profile_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const ProfileScreen());
      default :
        return MaterialPageRoute(builder:
            (BuildContext context)=> const SplashScreen());
    }
  }
}
