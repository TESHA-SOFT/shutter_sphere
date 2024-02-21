import 'package:flutter/material.dart';

import '../../../../common/style/style_view.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                'Hey! Welcome',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColor.font1,
                ),
              ),
              SizedBox(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
