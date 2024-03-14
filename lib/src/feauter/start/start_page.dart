import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../common/style/style_view.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) =>
        SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: (MediaQuery.of(context).size.width)/1.6,
                        height: (MediaQuery.of(context).size.height)/10,
                        color: AppColor.font1,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'SHUTTERSPHERE',
                        style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 3.5,
                          fontWeight: FontWeight.w400,
                          color: AppColor.font1,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: (MediaQuery.of(context).size.width)/1.6,
                        height: (MediaQuery.of(context).size.height)/10,
                        color: AppColor.font1,
                      ),
                      const Spacer(),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: (MediaQuery.of(context).size.width)/4,
                        height: (MediaQuery.of(context).size.height)/120,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppColor.button1,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Shutter Sphere',
                        textAlign:TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: AppColor.font1,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        textAlign:TextAlign.center,
                        'Capture the moments, leave a trace of eternity!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: AppColor.font4,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 260,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/login');
                            //Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'log In',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: AppColor.font1,
                              backgroundColor: AppColor.button1,
                            ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 260,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/home');
                            //Navigator.pushNamed(context, '/home');
                          },
                          child: Text(
                            'Start as a guest',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: AppColor.font1,
                              backgroundColor: AppColor.button1,
                            ),
                        ),
                      ),
                      const Spacer(),
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
