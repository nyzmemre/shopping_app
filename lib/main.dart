import 'package:flutter/material.dart';

import 'utils/constants/texts/headers.dart';
import 'screens/homepage.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      home: HomePage(),
    );
  }
}
