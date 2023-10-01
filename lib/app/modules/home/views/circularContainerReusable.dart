import 'package:flutter/material.dart';

import '../../../constant/dimension.dart';

class CircularContainerReusable extends StatelessWidget {
  final String days;
  final bool isClicked;
   CircularContainerReusable({super.key, required this.days, required this.isClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.hight10 * 4,
      width: Dimension.width10 * 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: isClicked?Colors.blue:Colors.grey,
          border: Border.all(color: Colors.black)),
      child: Center(
        child: Text(days),
      ),
    );
  }
}
