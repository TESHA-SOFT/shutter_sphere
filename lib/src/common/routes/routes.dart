import '../../feauter/auth/pages/view_auth_pages.dart';
import '../../feauter/home/pages/home_page.dart';
import '../../feauter/start/start_page.dart';

class Routes {
  static final router = {
    '/': (context) => StartPage(),
    '/home': (context) => HomePage(),
    '/login': (context) => LogIn(),
    '/emailsignup': (context) => EmailSignUp(),
    '/profilreg': (context) => ProfilePage(),
    '/updatepas': (context) => UpdatePassword(),
    '/resetpas': (context) => ResetPassword(),
  };
}
