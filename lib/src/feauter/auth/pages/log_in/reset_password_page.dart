import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shutter_sphere/src/common/style/style_view.dart';
import 'package:shutter_sphere/src/feauter/auth/widget/text_form_number.dart';
import 'package:shutter_sphere/src/feauter/widget/button_widget.dart';
import '../../widget/view_auth_widget.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  String phone = '';
  final _formKey = GlobalKey<FormState>();
  final _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(route: '/login',),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                            fontSize: 35,
                            color: AppColor.font2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enter your email address to reset your password',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColor.font1,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Number',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor.font1,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormNumber(
                        text: 'Enter the Number',
                        controller: _numberController,
                        validator: (value) => ValidApp().validateNumber(value),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      const Spacer(),
                      ButtonWidget(
                        text: 'Reset',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.goNamed('verifynumb', pathParameters: {'route': '/updatepas', 'phone': _numberController.text});
                          }
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
