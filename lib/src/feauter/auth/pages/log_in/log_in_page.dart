import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shutter_sphere/src/common/style/style_color.dart';
import '../../widget/view_auth_widget.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isobscureText = true;

  CircleAvatar emailButton(String rout) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: AppColor.font1,
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        icon: SvgPicture.asset(rout),
      ),
    );
  }

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
                      Text(
                        'Welcome to Shutter Sphere',
                        style: TextStyle(
                          fontSize: 35,
                          color: AppColor.font2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
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
                        height: 17,
                      ),
                      TextFormEmail(
                        controller: _emailController,
                        text: 'Enter the Email',
                        validator: (value) => ValidApp().validateEmail(value),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(
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
                              Navigator.pushNamed(context, '/resetpas');
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
                              overlayColor:
                                  MaterialStatePropertyAll(AppColor.background),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PasswordTextForm(
                        text: 'Enter the Password',
                        passwordController: _passwordController,
                        validator: (value) =>
                            ValidApp().validatePassword(value),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      Spacer(),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () => Navigator.pop(context, false),
                            style: TextButton.styleFrom(
                              backgroundColor: AppColor.button1,
                              foregroundColor: AppColor.font1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              Navigator.pushNamed(context, '/emailsignup');
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
                              overlayColor:
                                  MaterialStatePropertyAll(AppColor.background),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'or',
                        style: TextStyle(
                          color: AppColor.font2,
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(
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
                      Spacer(),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
