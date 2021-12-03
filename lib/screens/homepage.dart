import 'package:flutter/material.dart';
import 'package:shopping_app/utils/components/grey_container.dart';
import 'package:shopping_app/utils/my_widgets/dot_point.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyContainer(
          child: Text("Merhaba"),
        ),
      ),
    );
  }
}
