import 'package:flutter/material.dart';

import '../models/product.dart';
import '../product_data/olive_oil_data.dart';
import '../utils/constants/extensions/extensions.dart';
import '../utils/constants/texts/headers.dart';
import '../utils/constants/texts/subtitles.dart';
import '../utils/my_widgets/product_info.dart';
import '../utils/my_widgets/homepage_top_texts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final OliveOilData _oliveOilData = OliveOilData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: context.horizontalPadding,
        child: ListView(
          children: [
            context.fifteenSizedBox,
            HomePageTopTexts(),
            context.fifteenSizedBox,
            productLists(context, _oliveOilData.oliveOilList, oliveOil,
                _oliveOilData.oliveOilList.length),
            context.fifteenSizedBox,
            productLists(context, _oliveOilData.bestOliveOils, bestSales,
                _oliveOilData.bestOliveOils.length),
          ],
        ),
      ),
    );
  }

  Widget productLists(BuildContext context, List<Product> list,
      String productName, int productCounter) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        productHeader(context, productName, productCounter),
        SizedBox(
          height: context.height * 0.3,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, int index) {
                return Row(
                  children: [
                    ProductInfo(list: list, index: index),
                    context.horTenSizedBox,
                  ],
                );
              }),
        ),
      ],
    );
  }

  Widget productHeader(
      BuildContext context, String productName, int productCounter) {
    return Container(
      height: context.height * 0.03,
      width: context.height * 0.3 * 2,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            child: Text(
              productName + "  " + productCounter.toString(),
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 1,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  showAll,
                  style: Theme.of(context).textTheme.caption,
                )),
          ),
        ],
      ),
    );
  }
}
