import 'package:flutter/material.dart';
import 'package:pomo/common/theme.dart';

enum ButtonVariant { primary, secondary, social }

ButtonStyle getButtonStyle(ButtonVariant variant) {
  switch (variant) {
    case ButtonVariant.primary:
      return FilledButton.styleFrom(
        backgroundColor: ThemeApp.primary900,
        minimumSize: const Size.fromHeight(58.0),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(58.0),
        ),
      );
    case ButtonVariant.social:
      return FilledButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size.fromHeight(58.0),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(58.0),
          side: BorderSide(color: ThemeApp.gray200),
        ),
      );
    case ButtonVariant.secondary:
      return FilledButton.styleFrom(
        backgroundColor: ThemeApp.backgroundOrange,
        minimumSize: const Size.fromHeight(58.0),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(58.0),
        ),
      );
  }
}

TextStyle getButtonTextStyle(ButtonVariant variant) {
  switch (variant) {
    case ButtonVariant.primary:
      return TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
      );
    case ButtonVariant.social:
      return TextStyle(
        color: ThemeApp.gray900,
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
      );
    case ButtonVariant.secondary:
      return TextStyle(
        color: ThemeApp.primary900,
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
      );
  }
}
