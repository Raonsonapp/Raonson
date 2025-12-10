import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/chatgpt_screen.dart';
import '../screens/kingai_screen.dart';
import '../screens/reels_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';
import '../routes/app_routes.dart';
import '../screens/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.chatGPT:
        return MaterialPageRoute(builder: (_) => ChatGPTScreen());
      case AppRoutes.kingAI:
        return MaterialPageRoute(builder: (_) => KingAIScreen());
      case AppRoutes.reels:
        return MaterialPageRoute(builder: (_) => ReelsScreen());
      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case AppRoutes.search:
        return MaterialPageRoute(builder: (_) => SearchScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}