import 'package:flutter/material.dart';
import '../../../../common/style/style_view.dart';
import '../../widget/view_auth_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

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
                        'Profile & Password',
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
                        'Enter your details for the final registration in the ShutterSphere',
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
                        'Full Name',
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
                      text: 'Enter the Full Name',
                      controller: _nameController,
                      validator: (value) => ValidApp().validateUsername(value),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
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
                    PasswordTextForm(
                      text: 'Enter the password',
                      passwordController: _passwordController,
                      validator: (value) => ValidApp().validatePassword(value),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Confirm the Password',
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
                    PasswordTextForm(
                      text: 'Enter the password',
                      validator: (value) => ValidApp().resetPassword(value),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/profilreg');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: AppColor.button1,
                            foregroundColor: AppColor.font1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            'Confirm',
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
