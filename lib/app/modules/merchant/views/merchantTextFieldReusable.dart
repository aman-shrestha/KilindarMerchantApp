import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../constant/styles.dart';

class MerchantTextFieldReusable extends StatelessWidget {
  final String hintext;
  MerchantTextFieldReusable({super.key, required this.hintext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintext,
        hintStyle: headingStyle2.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AppColors.silver1),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD0D5DD)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD0D5DD)),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
