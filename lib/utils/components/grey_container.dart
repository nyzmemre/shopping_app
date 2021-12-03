import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? width;
  final double? height;
  const MyContainer({Key? key, this.child, this.color, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: width ?? 100,
      height: height ?? 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
            color: color ?? contGreyBackRound,
      ),
    );
  }
}
