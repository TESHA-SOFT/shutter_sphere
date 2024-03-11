import 'package:flutter/material.dart';
import 'package:shutter_sphere/src/feauter/auth/widget/app_bar_widget.dart';

class CodePage extends StatefulWidget {
  const CodePage({super.key});

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
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
                    children: [
                      Text(
                          'yyr'
                      ),
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
