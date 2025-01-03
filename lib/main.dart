import 'package:ezycourse/core/constants/app_themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentaion/screens/login_screen.dart';
import 'services/data/local_data_services/local_data_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDataServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: AuthNavigator(
        isAuthenticate: true,
      ),
    );
  }
}
