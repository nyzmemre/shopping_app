import 'package:flutter/material.dart';

class DotPoint extends StatelessWidget {
  const DotPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(

            ),
          );
        });
  }
}
