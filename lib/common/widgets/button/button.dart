import 'package:flutter/material.dart';

import 'button_styles.dart';

export 'button_styles.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final ButtonVariant variant;
  final Widget? iconLeft;

  const Button({
    super.key,
    required this.onPressed,
    required this.title,
    this.variant = ButtonVariant.primary,
    this.iconLeft,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: getButtonStyle(variant),

      child: Stack(
        alignment: Alignment.center,
        children: [
          if (iconLeft != null)
            Align(alignment: Alignment.centerLeft, child: iconLeft),
          Center(child: Text(title, style: getButtonTextStyle(variant))),
        ],
      ),
    );
  }
}
