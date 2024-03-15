import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import '../../common/style/style_view.dart';
import '../widget/error_message.dart';

class CodePage extends StatefulWidget {
  final String? verificationId;
  final String? route;
  final String? phone;
  const CodePage({
    super.key,
    this.route,
    this.phone,
    this.verificationId,
  });

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  final _otpController = TextEditingController();
  bool _isResendAgain = false;
  late Timer _timer;
  int _start = 60;

  void resend(){
    setState(() {
      _isResendAgain = true;
    });

    const onSec = Duration(seconds: 1);
    _timer = Timer.periodic(onSec, (timer) {
      setState(() {
        if(_start == 0){
          _start = 60;
          _isResendAgain = false;
          timer.cancel();
        }else{
          _start--;
        }
      });
    });
  }

  Future<void> otpCode(BuildContext context) async {
    try{
      PhoneAuthCredential credential = await PhoneAuthProvider.credential(
        verificationId: widget.verificationId!,
        smsCode: _otpController.text.toString(),
      );
      await FirebaseAuth.instance.signInWithCredential(credential).then((value){
        context.go(widget.route!);
      });
    }
    on FirebaseAuthException catch(e){
      print(e);
      Utils.showSnackBar(e.message);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
      ),
      body: LayoutBuilder(
        builder: (context, constrains) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constrains.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      //Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enter code',
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Code sent to you mobile phone \n${widget.phone!}',
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
                      Pinput(
                        length: 6,
                        mainAxisAlignment: MainAxisAlignment.center,
                        defaultPinTheme: PinTheme(
                          textStyle: TextStyle(
                              color: AppColor.font3,
                              fontWeight: FontWeight.w300
                          ),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppColor.font1,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (value) {
                          otpCode(context);
                          /*if(value == '555555') {
                            context.go(widget.route!);
                          }*/
                          return null;
                        },
                      ),
                      Spacer(),
                      OverflowBar(
                        overflowAlignment: OverflowBarAlignment.center,
                        children: [
                          Text(
                            'Don\'t resive the OTP?',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.font1,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextButton(
                            onPressed:(){
                              if(_isResendAgain) return;
                              resend();
                            },
                            child: Text(
                              _isResendAgain
                                  ? 'Try again in ' + _start.toString()
                                  : 'Resend',
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
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
