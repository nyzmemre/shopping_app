import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/utils/components/my_container.dart';
import 'package:shopping_app/utils/constants/extensions/extensions.dart';

class ProductInfo extends StatelessWidget {
  final List<Product> list;
  final int index;
  const ProductInfo({Key? key,required this.list, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyContainer(
            child: Image.asset(list[index].imgURL[0]),
          ),
          context.fifteenSizedBox,
          Text(list[index].name, style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.start,),
          context.fiveSizedBox,
          Text("\$" + list[index].price.toString(),textAlign: TextAlign.start,),
        ],
      ),
    );
  }
}
