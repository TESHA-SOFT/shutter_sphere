import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shutter_sphere/src/common/style/style_color.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isobscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.background,
          leading: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: IconButton(
              onPressed: () => Navigator.pop(context, false),
              icon: SvgPicture.asset(
                'assets/icons/arrow.svg',
                width: 40,
              ),
            ),
          )),
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
                      /*SizedBox(
                        height: 10,
                      ),*/
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
                      TextFormField(
                        cursorColor: AppColor.button1,
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter the Email',
                          hintStyle: TextStyle(
                            color: AppColor.font3,
                            fontWeight: FontWeight.w300,
                          ),
                          filled: true,
                          fillColor: AppColor.font1,
                        ),
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
                            onPressed: () => Navigator.pop(context, false),
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
                      TextFormField(
                        cursorColor: AppColor.button1,
                        controller: _passwordController,
                        obscureText: isobscureText,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter the Password',
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
                          )
                        ),
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
                            onPressed: () => Navigator.pop(context, false),
                            child: Text(
                              'Sign In!',
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
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColor.font1,
                            child: IconButton(
                              onPressed:  () => Navigator.pop(context, false),
                              icon: SvgPicture.asset('assets/images/google.svg'),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColor.font1,
                            child: IconButton(
                              onPressed:  () => Navigator.pop(context, false),
                              icon: SvgPicture.asset('assets/images/vk.svg'),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColor.font1,
                            child: IconButton(
                              onPressed:  () => Navigator.pop(context, false),
                              icon: SvgPicture.asset('assets/images/yandex.svg'),
                            ),
                          ),
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
