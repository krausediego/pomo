import 'package:flutter/material.dart';
import 'package:pomo/common/theme.dart';
import 'package:pomo/common/widgets/button/button.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                "assets/images/congrats.png",
                width: double.maxFinite,
                height: 130.0,
              ),
              const SizedBox(height: 32.0),
              Text(
                "You're All Set!",
                style: TextStyle(
                  color: ThemeApp.gray900,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                "Congratulations! Your password has been changed successfully.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ThemeApp.gray700,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Button(onPressed: () {}, title: "Go to Homepage"),
            ],
          ),
        ),
      ),
    );
  }
}
