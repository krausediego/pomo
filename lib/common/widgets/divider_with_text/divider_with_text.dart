import 'package:flutter/material.dart';
import 'package:pomo/common/theme.dart';

class DividerWithText extends StatelessWidget {
  final String label;

  const DividerWithText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: Divider(color: ThemeApp.gray200, thickness: 1.5),
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: ThemeApp.gray700,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 16.0),
            child: Divider(color: ThemeApp.gray200, thickness: 1.5),
          ),
        ),
      ],
    );
  }
}
