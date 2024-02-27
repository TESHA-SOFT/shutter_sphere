import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shutter_sphere/src/common/style/style_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.background,
          leading: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: IconButton(
              onPressed: () => Navigator.pop(context, false),
              icon: SvgPicture.asset(
                'assets/icons/arrow.svg',
                width: 40,
              ),
            ),
          )),
      body: Text("home"),
    );
  }
}
