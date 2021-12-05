import 'package:flutter/material.dart';
import 'package:shopping_app/product_data/olive_oil_data.dart';
import 'package:shopping_app/utils/components/my_container.dart';

class OliveOils extends StatelessWidget {
  const OliveOils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _data=OliveOilData();
    return SafeArea(child: Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, int index){
        return MyContainer(
          child: Image.asset(_data.oliveOilList[index].imgURL[0]),
        );
      }),
    ));
  }
}
