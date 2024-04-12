import 'package:flutter/material.dart';
import 'package:formulario_armenta/config/router/app_router.dart';
import 'package:formulario_armenta/config/router/theme/app_theme.dart';
import 'package:formulario_armenta/presentation/screens/screens.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}