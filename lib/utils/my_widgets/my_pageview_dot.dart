import 'package:flutter/material.dart';
import 'package:shopping_app/product_data/olive_oil_data.dart';
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
  PageController _pageController = PageController(viewportFraction: 0.8);
  int currentPage = 0;
  bool _isSelected = false;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        if (_pageController.page != null)

          currentPage = _pageController.page!.round();

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
          flex: 2,
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
        Padding(
          padding: context.highPadding,
          child: SizedBox(
            width: context.width*0.5,
            height: 5,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: widget.data.oliveOilList[widget.index].imgURL.length,
                itemBuilder: (context, int i) {
                //  print(i);
                  if (currentPage!= i) {
                      _isSelected =false;
                  }else _isSelected=true;
                  return AnimatedContainer(

                   // key: ValueKey(_pageController.page),
                    duration: Duration(milliseconds: 300),
                    width: context.width*0.5/(widget.data.oliveOilList[widget.index].imgURL.length),
                    height: 1,
                    //padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: (_isSelected) ? Colors.black : Colors.grey,
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
