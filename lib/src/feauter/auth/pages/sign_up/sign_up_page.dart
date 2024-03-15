import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shutter_sphere/src/feauter/widget/button_widget.dart';
import '../../../../common/style/style_view.dart';
import '../../widget/view_auth_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String phone = '';
  final _numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                          'Register Account',
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
                          'Enter your number for account registration',
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
                        text: 'Sign Up',
                        onPressed: () async{
                          await FirebaseAuth.instance.verifyPhoneNumber(
                              verificationCompleted: (PhoneAuthCredential phoneAuthCredential) { },
                              verificationFailed: (FirebaseAuthException error) { },
                              codeSent: (String verificationId, int? forceResendingToken) {
                                context.goNamed('verifynumb', pathParameters: {
                                  'route': '/profilreg',
                                  'phone': _numberController.text,
                                  'verifif': verificationId,
                                });
                              },
                              codeAutoRetrievalTimeout: (String verificationId) { },
                            phoneNumber: _numberController.text.toString(),
                          );
                          /*if (_formKey.currentState!.validate()) {
                            context.goNamed('verifynumb', pathParameters: {'route': '/profilreg', 'phone': _numberController.text});
                          }*/
                        },
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Have an Account?',
                            style: TextStyle(
                              color: AppColor.font1,
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              context.go('/login');
                            },
                            child: Text(
                              'Log In!',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.button2,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(AppColor.background),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
