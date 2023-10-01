import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/constant/colors.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';

class DashboardItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const DashboardItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Dimension.hight10 * 8,
        width: Dimension.width10 * 16.8,
        color: AppColors.homedashboarditem,
        child: Row(
          children: [
            Image.asset(image),
            Column(
              children: [
                Text(title),
                Text(subtitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
