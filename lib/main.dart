import 'package:flutter/material.dart';
import 'package:work/src/utils/theme.dart';
import 'package:work/src/views/users_and_permissions/users_and_permissions.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeProvider().darkTheme,
      theme: ThemeProvider().lightTheme,
      themeMode: ThemeMode.light,
      home: const UsersAndPermission(),
    );
  }
}
