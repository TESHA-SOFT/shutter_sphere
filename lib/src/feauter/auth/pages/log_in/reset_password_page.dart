import 'package:flutter/material.dart';
import 'package:shutter_sphere/src/common/style/style_view.dart';
import '../../widget/view_auth_widget.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
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
                    SizedBox(
                      height: 5,
                    ),
                    Align(
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
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.font1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormEmail(
                      text: 'Enter the Email',
                      controller: _emailController,
                      validator: (value) => ValidApp().validateEmail(value),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/updatepas');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: AppColor.button1,
                            foregroundColor: AppColor.font1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            'Reset',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
