import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/style/style_view.dart';

class PasswordTextForm extends StatefulWidget {
  final String text;
  final TextEditingController? passwordController;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  const PasswordTextForm(
      {super.key,
      required this.text,
      this.passwordController,
      this.validator,
      this.autovalidateMode});

  @override
  State<PasswordTextForm> createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  bool isobscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.button1,
      controller: widget.passwordController,
      obscureText: isobscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.text,
        hintStyle: TextStyle(
          color: AppColor.font3,
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: AppColor.font1,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isobscureText = !isobscureText;
            });
          },
          icon: isobscureText
              ? SvgPicture.asset('assets/icons/eye_off.svg')
              : SvgPicture.asset('assets/icons/eye.svg'),
        ),
      ),
      validator: widget.validator,
      autovalidateMode: widget.autovalidateMode,
    );
  }
}
