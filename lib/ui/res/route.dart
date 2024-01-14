import 'package:go_router/go_router.dart';
import 'package:identicongenerator_flutter/ui/screen/home/home_screen.dart';
import 'package:identicongenerator_flutter/ui/screen/splash/splash_screen.dart';

class Routes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Paths.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Paths.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}

class Paths {
  static const splash = '/';
  static const home = '/home';
}
