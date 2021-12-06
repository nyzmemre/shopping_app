import 'package:flutter/material.dart';
import 'package:shopping_app/product_data/olive_oil_data.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/extensions/extensions.dart';

class MyPageViewDot extends StatefulWidget {
  final int index;
  final OliveOilData data;
  const MyPageViewDot({Key? key, required this.index, required this.data}) : super(key: key);

  @override
  _MyPageViewDotState createState() => _MyPageViewDotState();
}

class _MyPageViewDotState extends State<MyPageViewDot> {
  PageController _pageController=PageController();
  double currentPage=0;
  bool _isSelected=false;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        if(_pageController.page!=null)
        currentPage=_pageController.page!;
        else currentPage=0;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: widget.data.oliveOilList[widget.index].imgURL.length,
        itemBuilder: (context, int index) {

/*        if(currentPage==index) {
setState(() {
  _isSelected=!_isSelected;
});
        }*/
          return Column(
            children: [
              SizedBox(
                  width: context.width * 0.5,
                  child:
                  Image.asset(widget.data.oliveOilList[index].imgURL[index])),
              SizedBox(
                width: 50,
                height: 10,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemCount: widget.data.oliveOilList[widget.index].imgURL.length,
                    itemBuilder: (context, int i){
                  return Container(
                    width: 50,
                    height: 8,
                    //padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: /*(_isSelected) ? red :*/ blue,
                    ),

                  );
                }),
              )
            ],
          );
        });
  }
}
