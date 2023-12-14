import 'package:flutter/material.dart';
import 'package:flutter_application_first/config/items/app_colors.dart';
import 'package:flutter_application_first/config/routes/app_router.dart';

import 'features/splash/presentation/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldBgColor,
      ),
      home: const Splash(),
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }
}
