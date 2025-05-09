import 'package:flutter/material.dart';

class ThemeApp {
  // Primary
  static Color get primary900 => const Color(0xffFF6347);

  static Color get primary800 => const Color(0xffFF7359);

  static Color get primary700 => const Color(0xffFF826C);

  static Color get primary600 => const Color(0xffFF927E);

  static Color get primary500 => const Color(0xffFFA191);

  static Color get primary400 => const Color(0xffFFB1A3);

  static Color get primary300 => const Color(0xffFFC1B5);

  static Color get primary200 => const Color(0xffFFD0C8);

  static Color get primary100 => const Color(0xffFFE0DA);

  static Color get primary50 => const Color(0xffFFEFED);

  // Secondary
  static Color get secondary900 => const Color(0xffFF4500);

  static Color get secondary800 => const Color(0xffFF581A);

  static Color get secondary700 => const Color(0xffFF6A33);

  static Color get secondary600 => const Color(0xffFF7D4D);

  static Color get secondary500 => const Color(0xffFF8F66);

  static Color get secondary400 => const Color(0xffFFA280);

  static Color get secondary300 => const Color(0xffFFB599);

  static Color get secondary200 => const Color(0xffFFC7B3);

  static Color get secondary100 => const Color(0xffFFDACC);

  static Color get secondary50 => const Color(0xffFFECE6);

  // Alert & Status
  static Color get alertsStatusSuccess => const Color(0xff12D18E);

  static Color get alertsStatusInfo => const Color(0xffFF6347);

  static Color get alertsStatusWarning => const Color(0xffFACC15);

  static Color get alertsStatusLightDisabled => const Color(0xffD8D8D8);

  static Color get alertsStatusDarkDisabled => const Color(0xff23252B);

  static Color get alertsStatusButtonDisabled => const Color(0xffCC4F39);

  // Gray
  static Color get gray900 => const Color(0xff212121);

  static Color get gray800 => const Color(0xff424242);

  static Color get gray700 => const Color(0xff616161);

  static Color get gray600 => const Color(0xff757575);

  static Color get gray500 => const Color(0xff9E9E9E);

  static Color get gray400 => const Color(0xffBDBDBD);

  static Color get gray300 => const Color(0xffE0E0E0);

  static Color get gray200 => const Color(0xffEEEEEE);

  static Color get gray100 => const Color(0xffF5F5F5);

  static Color get gray50 => const Color(0xffFAFAFA);

  // Dark
  static Color get dark1 => const Color(0xff181A20);

  static Color get dark2 => const Color(0xff1E2025);

  static Color get dark3 => const Color(0xff1F222A);

  static Color get dark4 => const Color(0xff262A35);

  static Color get dark5 => const Color(0xff35383F);

  // Background
  static Color get backgroundOrange => const Color(0xffFFF3F0);

  static Color get backgroundBlue => const Color(0xffEDF2FF);

  static Color get backgroundGreen => const Color(0xffEFF9F5);

  static Color get backgroundPurple => const Color(0xffF7ECFF);

  static Color get backgroundRed => const Color(0xffFFEFEE);

  static Color get backgroundTeal => const Color(0xffEDF7F6);

  static Color get backgroundBrown => const Color(0xffF8F3F1);

  static Color get backgroundYellow => const Color(0xffFFFCEB);
}

extension AppContext on BuildContext {
  Size get size => MediaQuery.sizeOf(this);

  double get width => size.width;

  double get height => size.height;

  Future push(Widget widget) async {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  void pop() async {
    return Navigator.pop(this);
  }
}
