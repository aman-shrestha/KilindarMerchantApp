import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';
import 'package:kilindar_merchant_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/checkbox.dart';
import 'package:kilindar_merchant_app/app/constant/colors.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';

import '../../../reusable_widget.dart/reusable_textformfield.dart';
import '../../register/views/register_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // debugPrint(
    //     "my screen height" + MediaQuery.of(context).size.height.toString());
    // debugPrint(
    //     "my screen width" + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20.0, 36.0, 20.0, 28.0),
          child: Column(
            children: [
              Container(
                height: Dimension.hight10 * 12,
                width: Dimension.width10 * 12,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"))),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Welcome to your Kilindar Merchant App',
                style: headingStyle.copyWith(
                    color: AppColors.primaryColor, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Dimension.hight10 * 8,
              ),
              CustomTextField(
                hintext: "Phone Number",
                icon: Icons.phone,
              ),
              SizedBox(
                height: Dimension.hight10 * 1.6,
              ),
              CustomTextField(
                hintext: "Password",
                icon: Icons.lock,
                isObscure: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CheckboxExample(),
                  Text(
                    'Remember me',
                    style: headingStyle2.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimension.hight10 * 3,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.button,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                height: Dimension.hight10 * 6.4,
                width: Dimension.width10 * 35.1,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => DashboardView());
                  },
                  child: Text(
                    'Sign In',
                    style: buttonText.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        height: 1.5,
                        color: AppColors.white),
                  ),
                  // style: GoogleFonts.poppins(
                  //     fontWeight: FontWeight.w700,
                  //     fontSize: 16,
                  //     height: 1.5,
                  //     color: AppColors.white),
                ),
              ),
              SizedBox(
                height: Dimension.hight10 * 1.6,
              ),
              Text(
                'Forgot your password?',
                style: headingStyle2.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: AppColors.redText,
                  height: 1.5,
                ),
                // style: TextStyle(
                //   fontWeight: FontWeight.w500,
                //   fontSize: 15,
                //   color: AppColors.forgotpassword,
                //   height: 1.5,
                // ),
              ),
              SizedBox(
                height: Dimension.hight10 * 12.9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: headingStyle2.copyWith(
                      color: AppColors.silver,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.2,
                    ),
                    // style: TextStyle(
                    //   color: AppColors.logintextformfield,
                    //   fontWeight: FontWeight.w400,
                    //   fontSize: 14,
                    //   height: 1.2,
                    // ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(RegisterView()),
                    child: Container(
                      child: Text(
                        " Sign up",
                        style: headingStyle2.copyWith(
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
    );
  }
}
