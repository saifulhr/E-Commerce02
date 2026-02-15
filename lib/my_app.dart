import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_commerce02/core/themes/app_theme.dart';

import 'routes/app_routes.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppallTheme.lightTheme,
      darkTheme: AppallTheme.darkTheme,
      initialRoute: AppRoutes.onbordingscreen,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
