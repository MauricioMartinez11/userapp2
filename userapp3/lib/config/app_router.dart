import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:userapp3/presentation/screens/create_profile/create_profile_screen.dart';
import 'package:userapp3/presentation/screens/home/home_screen.dart';
import 'package:userapp3/presentation/screens/user_profile/user_profile_screen.dart';

final appRouter = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      path: "/home",
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: "/createProfile",
      builder: (context, state) => CreateProfileScreen(),
    ),
    GoRoute(
      path: "/profile",
      builder: (context, state) {
        final name = state.extra != null ? (state.extra as Map<String, String>)['name'] : '';
        final age = state.extra != null ? (state.extra as Map<String, String>)['age'] : '';
        final occupation = state.extra != null ? (state.extra as Map<String, String>)['occupation'] : '';

        return ProfileScreen(name: name ?? '', age: age ?? '', occupation: occupation ?? '');
      },
    ),
  ],
);