import 'package:flutter/material.dart';
import 'package:shopping_app/product_data/olive_oil_data.dart';
import 'package:shopping_app/utils/constants/extensions/extensions.dart';
import 'package:shopping_app/utils/my_widgets/product_details.dart';
import 'package:shopping_app/utils/my_widgets/product_info.dart';

class BestSales extends StatelessWidget {
  const BestSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _data=OliveOilData();
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: context.lowPadding,
            child: GridView.builder(
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: _data.bestOliveOils.length,
                itemBuilder: (context, int index) {
                  return ProductInfo(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetails(data: _data, index: index)));
                      },
                      list: _data.bestOliveOils, index: index);
                }),
          ),
        ));
  }
}
