import 'package:flutter/material.dart';

import '../constants/extensions/extensions.dart';
import '../constants/texts/headers.dart';
import '../constants/texts/subtitles.dart';

class HomePageTopTexts extends StatelessWidget {
  const HomePageTopTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: context.verticalPadding,
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
