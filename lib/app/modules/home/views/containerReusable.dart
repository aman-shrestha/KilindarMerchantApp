import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';

class ContainerReusableHome extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  ContainerReusableHome({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(12, 18, 0, 18),
        child: Container(
          child: Row(
            children: [
              Container(
                width: Dimension.width10 * 4,
                height: Dimension.hight10 * 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: SvgPicture.asset(icon),
              ),
              SizedBox(
                width: Dimension.width10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff344054),
                    ),
                  ),
                  SizedBox(
                    height: Dimension.hight10 * 0.4,
                  ),
                  Text(
                    subtitle,
                    style: headingStyle2.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff666666)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
