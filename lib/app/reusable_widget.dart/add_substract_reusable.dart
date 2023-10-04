import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../constant/dimension.dart';
import '../constant/styles.dart';

class AddSubstractReusable extends StatelessWidget {
  AddSubstractReusable({super.key});
  var value = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            value.value--;
          },
          child: Container(
            width: Dimension.width10 * 6.4,
            height: Dimension.hight10 * 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffF5F5F5),
              border: Border.all(
                color: Color(0xffD9D9D9),
              ),
            ),
            child: Icon(Icons.remove),
          ),
        ),
        SizedBox(
          width: Dimension.width10 * 0.8,
        ),
        Obx(
          () => Container(
            width: Dimension.width10 * 20.7,
            height: Dimension.hight10 * 6,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: value.value.toString() + "%",
                hintStyle: headingStyle2.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff101828),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffD0D5DD)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.silver),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: Dimension.width10 * 0.8,
        ),
        GestureDetector(
          onTap: () {
            value.value++;
          },
          child: Container(
            width: Dimension.width10 * 6.4,
            height: Dimension.hight10 * 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffF5F5F5),
              border: Border.all(
                color: Color(0xffD9D9D9),
              ),
            ),
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
