import 'package:flutter/material.dart';
import 'package:pomo/common/theme.dart';
import 'package:pomo/common/widgets/button/button.dart';
import 'package:pomo/common/widgets/input/input.dart';

import 'congrats_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Secure Your Account 🔒",
                style: TextStyle(
                  color: ThemeApp.gray900,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                "Almost there! Create a new password for your Focusify account to keep it secure. Remember to choose a strong and unique password.",
                style: TextStyle(
                  color: ThemeApp.gray700,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32.0),
              Input(
                label: "New password",
                hintText: "New Password",
                prefixIcon: Icon(Icons.lock_outline),
              ),
              const SizedBox(height: 16.0),
              Input(
                label: "Confirm New password",
                hintText: "Confirm New Password",
                prefixIcon: Icon(Icons.lock_outline),
              ),
              Spacer(),
              Button(
                onPressed: () {
                  context.push(const CongratsScreen());
                },
                title: "Save New Password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
