import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/style/style_view.dart';

class TextFormNumber extends StatelessWidget {
  final TextEditingController? controller;
  final String text;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  const TextFormNumber({
    super.key, this.controller,
    required this.text,
    this.validator,
    this.autovalidateMode
  });

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
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp('[0-9+]+'))
      ],
      maxLength: 14,
      keyboardType: TextInputType.phone,
      validator: validator,
      autovalidateMode: autovalidateMode,
    );
  }
}
