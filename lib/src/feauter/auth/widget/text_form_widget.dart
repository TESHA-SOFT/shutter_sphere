import 'package:flutter/material.dart';

import '../../../common/style/style_view.dart';

class TextFormEmail extends StatelessWidget {
  final TextEditingController? controller;
  final String text;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  const TextFormEmail(
      {super.key,
      this.controller,
      required this.text,
      this.validator,
      this.autovalidateMode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.button1,
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: TextStyle(
          color: AppColor.font3,
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: AppColor.font1,
      ),
      validator: validator,
      autovalidateMode: autovalidateMode,
    );
  }
}
