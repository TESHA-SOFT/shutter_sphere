import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/common/routes/routes.dart';
import 'src/common/style/style_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ]
    ); 
    return MaterialApp(
      title: "ShutterSphere",
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routes.router
    );
  }
}
