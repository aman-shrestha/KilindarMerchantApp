import 'package:flutter/material.dart';

class RadioButtonWidget extends StatelessWidget {

  final String title;
  const RadioButtonWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.radio_button_checked),
        Text(title),
      ],
    );
  }
}
