import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';

import '../../../constant/dimension.dart';

class CircularContainerReusable extends StatelessWidget {
  final String days;
  final bool isClicked;
  CircularContainerReusable(
      {super.key, required this.days, required this.isClicked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: Dimension.hight10 * 4,
          width: Dimension.width10 * 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: isClicked ? Color(0xff0A438F) : Colors.white,
              border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              days,
              style: headingStyle2.copyWith(
                color: isClicked ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          width: Dimension.width10 * 0.8,
        ),
      ],
    );
  }
}
