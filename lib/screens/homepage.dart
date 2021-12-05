import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/product_data/olive_oil_data.dart';
import 'package:shopping_app/utils/components/my_container.dart';
import 'package:shopping_app/utils/constants/extensions/extensions.dart';
import 'package:shopping_app/utils/constants/texts/headers.dart';
import 'package:shopping_app/utils/constants/texts/subtiitles.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final OliveOilData _oliveOilData = OliveOilData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.horizontalPadding,
        child: ListView(
          children: [
            context.fifteenSizedBox,
            homePageTopTexts(context),
            context.fifteenSizedBox,
            productListWidget(context, _oliveOilData.oliveOilList, oliveOil,
                _oliveOilData.oliveOilList.length),
            context.fifteenSizedBox,
            productListWidget(context, _oliveOilData.bestOliveOils, bestSales,
                _oliveOilData.bestOliveOils.length),
          ],
        ),
      ),
    );
  }

  Widget productListWidget(BuildContext context, List<Product> list,
      String productName, int productCounter) {
    return Column(
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
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          MyContainer(
                            child: Image.asset(list[index].imgURL[0]),
                          ),
                          context.fifteenSizedBox,
                          Text(list[index].name),
                          context.fifteenSizedBox,
                          Text("\$" + list[index].price.toString()),
                        ],
                      ),
                    ),
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

  Widget homePageTopTexts(BuildContext context) {
    return Padding(
      padding: context.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            welcome,
            style: Theme.of(context).textTheme.headline6,
          ),
          context.fifteenSizedBox,
          Text(
            appInfo,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
