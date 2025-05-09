import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:pomo/common/theme.dart';
import 'package:pomo/features/auth/get_started/change_password_screen.dart';

class PinValidationScreen extends StatefulWidget {
  const PinValidationScreen({super.key});

  @override
  State<PinValidationScreen> createState() => _PinValidationScreenState();
}

class _PinValidationScreenState extends State<PinValidationScreen> {
  late final FocusNode focusNode;
  int _secondsRemaining = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void resetTimer() {
    setState(() {
      _secondsRemaining = 60;
    });
    startTimer();
  }

  @override
  void dispose() {
    focusNode.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 83.5,
      height: 70.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
      textStyle: TextStyle(
        color: ThemeApp.gray900,
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter OTP Code 🔐",
                style: TextStyle(
                  color: ThemeApp.gray900,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                "We've sent you an OTP code to your registered email address. Please check your inbox and enter the code here.",
                style: TextStyle(
                  color: ThemeApp.gray700,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32.0),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Pinput(
                  focusNode: focusNode,
                  defaultPinTheme: defaultPinTheme,
                  onCompleted: (String value) {
                    context.push(const ChangePasswordScreen());
                  },
                  followingPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: ThemeApp.gray100,
                    ),
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: ThemeApp.backgroundOrange,
                      border: Border.all(
                        color: ThemeApp.primary900,
                        width: 2.0,
                      ),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: ThemeApp.gray100,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You can resend the code in",
                    style: TextStyle(
                      color: ThemeApp.gray700,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text(
                      "$_secondsRemaining",
                      style: TextStyle(
                        color: ThemeApp.primary900,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "seconds",
                    style: TextStyle(
                      color: ThemeApp.gray700,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Center(
                child: TextButton(
                  onPressed: () {
                    resetTimer();
                  },
                  child: Text(
                    "Resend code",
                    style: TextStyle(
                      color: ThemeApp.primary900,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
