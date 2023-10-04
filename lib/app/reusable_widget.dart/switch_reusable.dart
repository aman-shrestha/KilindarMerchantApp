import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchReusable extends StatelessWidget {
  SwitchReusable({super.key});
  var light = true.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Switch(
          // This bool value toggles the switch.
          value: light.value,
          activeColor: Color(0xff072D5F),
          onChanged: (bool value) {
            // This is called when the user toggles the switch.

            light.value = value;
          }),
    );
  }
}
