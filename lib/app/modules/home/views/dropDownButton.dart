import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownButtonReusable extends StatelessWidget {
  DropDownButtonReusable({super.key});
  var dropdownvalue = 'Item 1'.obs;
  var items = [
    'Item 1',
    'Cash FLow',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Obx(
          () => DropdownButton(
            // Initial Value
            value: dropdownvalue.value,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              dropdownvalue.value = newValue!;
            },
          ),
        ),
      ],
    );
  }
}
