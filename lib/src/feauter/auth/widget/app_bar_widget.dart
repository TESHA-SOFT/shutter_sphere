import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../common/style/style_view.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String route;
  const AppBarWidget({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColor.background,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: IconButton(
            onPressed: (){
              context.go(route);
              //=> Navigator.pop(context, false),
            },
            icon: SvgPicture.asset(
              'assets/icons/arrow.svg',
              width: 40,
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
