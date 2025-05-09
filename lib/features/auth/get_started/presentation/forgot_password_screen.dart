import 'package:flutter/material.dart';
import 'package:pomo/common/theme.dart';
import 'package:pomo/common/widgets/input/input.dart';
import 'package:pomo/features/auth/get_started/presentation/pin_validation_screen.dart';

import '../../../../common/widgets/button/button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Your Password?🔑",
                style: TextStyle(
                  color: ThemeApp.gray900,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                "No worries, we'll help you reset it. Please enter the email associated with your Pomo\naccount.",
                style: TextStyle(
                  color: ThemeApp.gray700,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32.0),
              Input(
                label: "Your Registered Email",
                hintText: "Email",
                prefixIcon: Icon(Icons.email_outlined),
              ),
              Spacer(),
              Button(
                onPressed: () {
                  context.push(const PinValidationScreen());
                },
                title: "Send OTP Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
