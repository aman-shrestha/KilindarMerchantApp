import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';

import '../constant/colors.dart';
import '../constant/styles.dart';

class ButtonReusable extends StatelessWidget {
  final String text;

  ButtonReusable({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.hight10 * 5.6,
      width: Dimension.width10 * 35.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: AppColors.primaryColor),
      child: Center(
        child: Text(
          text,
          style: headingStyle2.copyWith(
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w500,
            fontSize: 20,
            height: 1.2,
          ),
        ),
      ),
    );
  }
}
