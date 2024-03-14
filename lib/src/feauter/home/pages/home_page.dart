import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shutter_sphere/src/common/style/style_view.dart';
import 'package:shutter_sphere/src/feauter/auth/widget/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(route: '/',),
      body: Text("home"),
    );
  }
}
