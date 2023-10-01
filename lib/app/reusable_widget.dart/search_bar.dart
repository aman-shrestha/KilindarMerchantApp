import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/dimension.dart';
import '../constant/styles.dart';

class SearchBarReusable extends StatelessWidget {
  final String hintext;
  final IconData icon;
  const SearchBarReusable(
      {super.key, required this.hintext, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Dimension.hight10 * 5.5,
      child: TextField(
        style: TextStyle(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: hintext,
          hintStyle: headingStyle2.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.silversearch),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
            ),
          ),
        ),
      ),
    );
  }
}
