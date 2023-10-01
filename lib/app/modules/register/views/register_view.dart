import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';
import 'package:kilindar_merchant_app/app/modules/login/views/login_view.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';

import '../../../constant/colors.dart';
import '../../../reusable_widget.dart/reusable_textformfield.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(19, 40, 20, 28),
            child: Column(
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: Dimension.hight10 * 4,
                  width: Dimension.width10 * 4,
                ),

                Text(
                  'Sign up for Kilindar Merchant',
                  style: headingStyle.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: Dimension.hight10 * 4,
                ),
                CustomTextField(
                  hintext: "Full Name",
                  icon: Icons.account_box,
                ),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                CustomTextField(
                  hintext: "Phone Number",
                  icon: Icons.phone,
                ),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                //lklkjaslkdjalskdjsalkdjalsdjalsjdalskdjalksd
                SMALLTextField(),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                CustomTextField(
                  hintext: "Email (Optional)",
                  icon: Icons.email,
                ),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                CustomTextField(
                  hintext: "Password",
                  icon: Icons.lock,
                  isObscure: true,
                ),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                CustomTextField(
                  hintext: "Confirm Password",
                  icon: Icons.lock,
                  isObscure: true,
                ),
                SizedBox(
                  height: Dimension.hight10 * 2.3,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.button,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  height: Dimension.hight10 * 6.4,
                  width: Dimension.width10 * 35.1,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: buttonText.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          height: 1.5,
                          color: AppColors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 9.9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: headingStyle2.copyWith(
                        color: AppColors.silver,
                      ),
                      // style: TextStyle(
                      //   color: AppColors.logintextformfield,
                      //   fontWeight: FontWeight.w400,
                      //   fontSize: 14,
                      //   height: 1.2,
                      // ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(LoginView()),
                      child: Container(
                        child: Text(
                          " Sign in",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
