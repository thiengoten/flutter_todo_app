import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project1/providers/task_provider.dart';
import 'package:project1/screens/task_detail_screen.dart';
import 'package:project1/themes/app_theme.dart';
import 'package:provider/provider.dart';

import 'screens/task_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
    );
  }
}

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => TaskScreen(),
      routes: [
        GoRoute(
          path: 'details/:itemId',
          builder: (context, state) =>
              TaskDetailScreen(id: state.pathParameters['itemId']!),
        )
      ],
    )
  ],
);
