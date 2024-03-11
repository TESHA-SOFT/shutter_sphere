import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shutter_sphere/src/feauter/auth/widget/app_bar_widget.dart';
import '../../../common/style/style_view.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email Verification',
                        style: TextStyle(
                          fontSize: 35,
                          color: AppColor.font2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'A confirmation email has been sent to your email address',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.font1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width) / 1.3,
                      child: FloatingActionButton.extended(
                        onPressed: () => Navigator.pop(context, false),
                        label: Text(
                          'Resend the email',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w400),
                        ),
                        icon: SvgPicture.asset(
                          'assets/icons/letter.svg',
                        ),
                        backgroundColor: AppColor.button2,
                        foregroundColor: AppColor.font3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: Text(
                        'Сancel',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w400,
                            color: AppColor.button2),
                      ),
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
