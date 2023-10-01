import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/constant/colors.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintext;
  final IconData icon;
  bool isObscure;
  CustomTextField(
      {super.key,
      required this.hintext,
      required this.icon,
      this.isObscure = false});

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
          borderSide: BorderSide(color: AppColors.silver),
          borderRadius: BorderRadius.circular(22.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.silver),
          borderRadius: BorderRadius.circular(22.0),
        ),
        prefixIcon: Icon(
          icon,
          size: 24,
          color: AppColors.silver,
        ),
      ),
      obscureText: isObscure,
    );
  }
}

enum SelectGender { male, female, others }

//  THIS IS FOR THE SMALL TEXTFORM FIELD
class SMALLTextField extends StatefulWidget {
  const SMALLTextField({
    super.key,
  });

  @override
  State<SMALLTextField> createState() => _SMALLTextFieldState();
}

class _SMALLTextFieldState extends State<SMALLTextField> {
  SelectGender firstValue = SelectGender.male;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.silver),
                borderRadius: BorderRadius.circular(28.0)),
            child: Row(
              children: [
                Radio<SelectGender>(
                  value: SelectGender.male,
                  groupValue: firstValue,
                  onChanged: (SelectGender? value) {
                    setState(() {
                      firstValue = value!;
                    });
                  },
                ),
                Text(
                  "Male",
                  style: headingStyle2.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: Dimension.width10,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.silver),
                borderRadius: BorderRadius.circular(28.0)),
            child: Row(
              children: [
                Radio<SelectGender>(
                  value: SelectGender.female,
                  groupValue: firstValue,
                  onChanged: (SelectGender? value) {
                    setState(() {
                      firstValue = value!;
                    });
                  },
                ),
                Text(
                  "Female",
                  style: headingStyle2.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: Dimension.width10,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.silver),
                borderRadius: BorderRadius.circular(28.0)),
            child: Row(
              children: [
                Radio<SelectGender>(
                  value: SelectGender.others,
                  groupValue: firstValue,
                  onChanged: (SelectGender? value) {
                    setState(() {
                      firstValue = value!;
                    });
                  },
                ),
                Text(
                  "Others",
                  style: headingStyle2.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
