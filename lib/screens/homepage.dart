import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app/product_data/olive_oil_data.dart';
import 'package:shopping_app/utils/components/my_container.dart';
import 'package:shopping_app/utils/constants/extensions/extensions.dart';
import 'package:shopping_app/utils/constants/texts/headers.dart';
import 'package:shopping_app/utils/constants/texts/subtiitles.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  final OliveOilData _oliveOilData=OliveOilData();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(oliveOil+"  "+_oliveOilData.oliveOilList.length.toString(), style: Theme.of(context).textTheme.bodyText1,),
                Text(showAll, style: Theme.of(context).textTheme.caption,),
              ],
            ),
            SizedBox(
              height: context.height*0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, int index) {
                  return Row(
                    children: [
                      MyContainer(
                        child: Image.asset(_oliveOilData.oliveOilList[index].imgURL[0]),
                      ),
                      context.horTenSizedBox,
                    ],
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget homePageTopTexts(BuildContext context) {
    return Padding(
      padding: context.horizontalPadding,
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(welcome, style: Theme.of(context).textTheme.headline6,),
              context.fifteenSizedBox,
              Text(appInfo, style: Theme.of(context).textTheme.bodyText2,),
            ],
          ),
    );
  }
}
