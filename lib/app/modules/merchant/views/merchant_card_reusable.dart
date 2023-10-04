import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/switch_reusable.dart';

class MerchantCardReusable extends StatelessWidget {
  final String location;
  const MerchantCardReusable({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.width10 * 35.1,
      height: Dimension.hight10 * 5.6,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                location,
                style: headingStyle2.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff444444),
                ),
              ),
              SwitchReusable(),
            ],
          ),
        ),
      ),
    );
  }
}
