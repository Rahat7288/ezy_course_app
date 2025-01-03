import 'package:flutter/material.dart';

import '../../../feeds/presentations/screens/feed_screens.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Login Screen',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class AuthNavigator extends StatefulWidget {
  const AuthNavigator({super.key, required this.isAuthenticate});
  final bool isAuthenticate;

  @override
  State<AuthNavigator> createState() => _AuthNavigatorState();
}

class _AuthNavigatorState extends State<AuthNavigator> {
  @override
  Widget build(BuildContext context) {
    return widget.isAuthenticate ? FeedScreens() : LoginScreen();
  }
}
