import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/my_theme.dart';

import 'utils/constants/texts/headers.dart';
import 'screens/homepage.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=MyTheme.light();
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      title: appName,
      home: HomePage(),
    );
  }
}
