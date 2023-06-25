import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeProvider with ChangeNotifier {
  final darkTheme = ThemeData(
    primaryColor: Colors.white,
    canvasColor: const Color(0xFF6259FF),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Color(0xFF1C1B1F),
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Color(0xFF49454F),
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF383838),
    ),
    cardColor: const Color(0xFF781596),
  );

  final lightTheme = ThemeData(
    primaryColor: Colors.black,
    canvasColor: const Color(0xFF6259FF),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF1D1D1D),
    ),
    cardColor: const Color(0xFF781596),
  );

  late bool isDarkMode = false;

  late ThemeData _themeData = lightTheme;
  ThemeData getTheme() => _themeData;

  ThemeProvider();

  void setDarkMode() async {
    _themeData = darkTheme;
    isDarkMode = true;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: Colors.black,
        statusBarColor: Colors.transparent,
      ),
    );
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    isDarkMode = false;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Colors.black,
        statusBarColor: Colors.transparent,
      ),
    );
    notifyListeners();
  }
}
