import 'package:go_router/go_router.dart';
import 'package:project1/screens/task_detail_screen.dart';
import 'package:project1/screens/task_screen.dart';

class AppRoutes {
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
}
