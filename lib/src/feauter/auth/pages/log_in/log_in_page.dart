import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shutter_sphere/src/common/style/style_color.dart';
import 'package:shutter_sphere/src/feauter/widget/button_widget.dart';
import '../../widget/view_auth_widget.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isobscureText = true;

  CircleAvatar emailButton(String rout) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: AppColor.font1,
      child: IconButton(
        onPressed: () {
          context.go('/home');
          //Navigator.pushNamed(context, '/home');
        },
        icon: SvgPicture.asset(rout),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(route: '/',),
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
                        const Text(
                          'Welcome to Shutter Sphere',
                          style: TextStyle(
                            fontSize: 35,
                            color: AppColor.font2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
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
                          height: 17,
                        ),
                        TextFormEmail(
                          controller: _emailController,
                          text: 'Enter the Number',
                          validator: (value) =>
                              ValidApp().validateNumber(value),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColor.font1,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                context.go('/resetpas');
                                //Navigator.pushNamed(context, '/resetpas');
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.button2,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              style: ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(
                                    AppColor.background),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        PasswordTextForm(
                          text: 'Enter the Password',
                          passwordController: _passwordController,
                          validator: (value) =>
                              ValidApp().validatePassword(value),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                        const Spacer(),
                        const SizedBox(
                          height: 10,
                        ),
                        ButtonWidget(
                          text: 'Log In',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.go('/home');
                              //Navigator.pushNamed(context, '/home');
                            }
                          },
                        ),
                        Spacer(),
                        OverflowBar(
                          overflowAlignment: OverflowBarAlignment.center,
                          children: [
                            Text(
                              'No account?',
                              style: TextStyle(
                                color: AppColor.font2,
                                fontSize: 22,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                context.go('/emailsignup');
                                //Navigator.pushNamed(context, '/emailsignup');
                              },
                              child: Text(
                                'Sign Up!',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: AppColor.button2,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              style: ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(
                                    AppColor.background),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'or',
                          style: TextStyle(
                            color: AppColor.font2,
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            emailButton('assets/images/google.svg'),
                            emailButton('assets/images/vk.svg'),
                            emailButton('assets/images/yandex.svg'),
                          ],
                        ),
                        const Spacer(),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
