import 'package:go_router/go_router.dart';
import '../../feauter/auth/pages/view_auth_pages.dart';
import '../../feauter/home/pages/home_page.dart';
import '../../feauter/start/start_page.dart';
import '../../feauter/verification/verify_number_page.dart';

class AppRouter{
  late final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const StartPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LogIn(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUp(),
      ),
      GoRoute(
        path: '/profilreg',
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: '/updatepas',
        builder: (context, state) => const UpdatePassword(),
      ),
      GoRoute(
        path: '/resetpas',
        builder: (context, state) => const ResetPassword(),
      ),
      GoRoute(
        path: '/verifynumb/:route/:phone/:verificationId',
        name: 'verifynumb',
        builder: (context, state) => CodePage(
          route: state.pathParameters['route'],
          phone: state.pathParameters['phone'],
          verificationId: state.pathParameters['verificationId'],
        ),
      ),
    ],
  );
}