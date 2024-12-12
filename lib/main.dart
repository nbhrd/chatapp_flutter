import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

// Services
import './services/navigation_service.dart';

// Pages
import './pages/splash_page.dart';

void main() {
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () {
        runApp(
          MainApp(),
        );
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ChatApp",
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          surface: Color.fromRGBO(36, 35, 49, 1.0),
          // primary: Colors.grey.shade800,
          // secondary: Colors.grey.shade700,
        ),
        scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
        ),
      ),
      // navigatorKey: NavigationService.navigatorKey,
    );
  }
}
