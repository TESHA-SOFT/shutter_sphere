import 'package:flutter/material.dart';
import 'package:shutter_sphere/src/feauter/auth/page/start_page/start_page.dart';
import '../style/style_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ShutterSphere",
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
      },
    );
  }
}
