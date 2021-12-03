import 'package:flutter/material.dart';

import '../constants/extensions/extensions.dart';
import '../constants/colors.dart';

class MyContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? width;
  final double? height;
  final VoidCallback? onTap;
  const MyContainer({Key? key, this.child, this.color, this.width, this.height, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap ?? (){},
      child: Container(
        child: child,
        width: width ?? context.height*0.3,
        height: height ?? context.height*0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.height*0.03),
              color: color ?? contGreyBackRound,
        ),
      ),
    );
  }
}
