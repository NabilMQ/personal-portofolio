import 'package:go_router/go_router.dart';
import 'package:personal_portofolio/home_page.dart';
import 'package:personal_portofolio/widgets/base_components/not_found.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return HomePage();
      },
    ),
  ],
  errorBuilder: (context, state) {
    return NotFound();
  },
);