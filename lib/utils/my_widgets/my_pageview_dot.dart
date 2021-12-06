import 'package:flutter/material.dart';
import 'package:shopping_app/product_data/olive_oil_data.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/extensions/extensions.dart';

class MyPageViewDot extends StatefulWidget {
  final int index;
  final OliveOilData data;

  const MyPageViewDot({Key? key, required this.index, required this.data})
      : super(key: key);

  @override
  _MyPageViewDotState createState() => _MyPageViewDotState();
}

class _MyPageViewDotState extends State<MyPageViewDot> {
  PageController _pageController = PageController();
  double currentPage = 0;
  bool _isSelected = false;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        if (_pageController.page != null)
          currentPage = _pageController.page!;

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(currentPage);
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: widget.data.oliveOilList[widget.index].imgURL.length,
              itemBuilder: (context, int index) {
                return SizedBox(
                    width: context.width * 0.5,
                    child: Image.asset(
                        widget.data.oliveOilList[index].imgURL[index]));
              }),
        ),
        SizedBox(
          width: 150,
          height: 10,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.data.oliveOilList[widget.index].imgURL.length,
              itemBuilder: (context, int i) {
                print(i);
                if (currentPage != i) {
                    _isSelected =false;
                }else _isSelected=true;
                return Container(
                  width: 50,
                  height: 8,
                  //padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (_isSelected) ? Colors.red : blue,
                  ),
                );
              }),
        )
      ],
    );
  }
}
