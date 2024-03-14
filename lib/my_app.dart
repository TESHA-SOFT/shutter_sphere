import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shutter_sphere/src/common/routes/router.dart';
//import 'src/common/routes/routes.dart';
import 'src/common/style/style_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter().router;

    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ]
    ); 
    return MaterialApp.router(
      title: "ShutterSphere",
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      //initialRoute: '/',
      //routes: Routes.router
    );
  }
}
