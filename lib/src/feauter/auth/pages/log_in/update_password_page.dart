import 'package:flutter/material.dart';
import 'package:shutter_sphere/src/feauter/widget/button_widget.dart';
import '../../../../common/style/style_view.dart';
import '../../widget/view_auth_widget.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({super.key});

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: LayoutBuilder(
        builder: (context, constrains) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constrains.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Update Password',
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
                        'New Password',
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
                      text: 'Enter new password',
                      passwordController: _passwordController,
                      validator: (value) => ValidApp().validatePassword(value),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    SizedBox(height: 30,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'New Password',
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
                      text: 'Enter new password',
                      validator: (value) => ValidApp().resetPassword(value),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    Spacer(),
                    ButtonWidget(text: 'Save update'),
                    Spacer(),
                  ],
                ),
              )
            ),
          ),
        )
      ),
    );
  }
}
