import 'package:flutter/material.dart';

import 'package:shopping_app/product_data/olive_oil_data.dart';
import 'package:shopping_app/utils/constants/extensions/extensions.dart';
import 'package:shopping_app/utils/constants/texts/product_texts.dart';

class ProductDetails extends StatelessWidget {
  final OliveOilData data;
  final int index;
  const ProductDetails({Key? key, required this.data, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: data.oliveOilList[index].imgURL.length,
                itemBuilder: (context, int index){
              return SizedBox(
                  width: context.width*0.5,
                  child: Image.asset(data.oliveOilList[index].imgURL[index]));
            }),
          ),
          Text("Product: "+ data.oliveOilList[index].name),
          Text("\$"+data.oliveOilList[index].price.toString()),
          (data.oliveOilList[index].isAvailable) ? Text(available) : Text(unavailable),
          Text("Stock:" + data.oliveOilList[index].stock.toString()),
        ],
      ),
    ));
  }
}