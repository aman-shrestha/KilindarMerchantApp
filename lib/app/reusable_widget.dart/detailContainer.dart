import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/dimension.dart';
import '../constant/styles.dart';

class DetailContainerReusable extends StatelessWidget {
  final String title;
  final String no;
  DetailContainerReusable({super.key, required this.title, required this.no});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.hight10 * 14.2,
      width: Dimension.width10 * 35.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xffF4F4F4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: headingStyle2.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xff072D5F)),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/active.svg"),
                SizedBox(
                  width: Dimension.width10 * 1.2,
                ),
                Text(
                  "Active",
                  style: headingStyle2.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff095D36),
                  ),
                )
              ],
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/phone.svg"),
                SizedBox(
                  width: Dimension.width10 * 1.2,
                ),
                Text(
                  no,
                  style: headingStyle2.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff333333),
                  ),
                )
              ],
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/email.svg"),
                SizedBox(
                  width: Dimension.width10 * 1.2,
                ),
                Text(
                  'email',
                  style: headingStyle2.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff333333),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
