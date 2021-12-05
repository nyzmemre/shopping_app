import 'package:flutter/material.dart';

import '../components/my_container.dart';
import '../constants/extensions/extensions.dart';
import '../../models/product.dart';

class ProductInfo extends StatelessWidget {
  final List<Product> list;
  final int index;
  final VoidCallback? onTap;
  const ProductInfo({Key? key,required this.list, required this.index, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyContainer(
            onTap: onTap ?? (){},
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
