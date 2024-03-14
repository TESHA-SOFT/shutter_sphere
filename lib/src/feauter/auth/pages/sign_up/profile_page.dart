import 'package:flutter/material.dart';
import 'package:shutter_sphere/src/feauter/widget/button_widget.dart';
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
  final _formKey = GlobalKey<FormState>();

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
                      const Align(
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
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
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
                      const SizedBox(
                        height: 40,
                      ),
                      const Align(
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
                        validator: (value) =>
                            ValidApp().validateUsername(value),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      const Align(
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
                        validator: (value) =>
                            ValidApp().validatePassword(value),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      const Align(
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
                      ButtonWidget(
                        text: 'Confirm',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/home');
                          }
                        },
                      ),
                      Spacer(),
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
