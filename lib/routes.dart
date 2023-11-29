import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/home.dart';
import 'package:flutter_starter/screens/login_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    ShellRoute(
        builder: (context, state, child) {
          return Scaffold(body: child);
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const Home(),
          ),
        ]),
    // GoRoute(
    //   path: '/splash',
    //   builder: (context, state) => const SplashScreen(),
    // ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    // GoRoute(
    //   path: '/register',
    //   builder: (context, state) => const RegisterScreen(),
    // ),
    // GoRoute(
    //   path: '/password-forget',
    //   builder: (context, state) => const PasswordForgetScreen(),
    // ),
  ],
);
