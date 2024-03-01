import 'package:flutter/material.dart';
import '../../common/style/style_view.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonWidget({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: AppColor.button1,
            foregroundColor: AppColor.font1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
            ),
          )),
    );
  }
}
