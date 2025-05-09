import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pomo/common/theme.dart';
import 'package:pomo/common/widgets/button/button.dart';
import 'package:pomo/common/widgets/divider_with_text/divider_with_text.dart';
import 'package:pomo/common/widgets/input/input.dart';

import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back! 👋",
                  style: TextStyle(
                    color: ThemeApp.gray900,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  "Let's Get Back to Productivity",
                  style: TextStyle(
                    color: ThemeApp.gray700,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 32.0),
                Input(
                  label: "Email",
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 16.0),
                Input(
                  label: "Password",
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                ),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 34.0,
                      height: 34.0,
                      child: Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          checkColor: Colors.white,
                          activeColor: ThemeApp.primary900,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          side: BorderSide(
                            color: ThemeApp.primary900,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.push(const ForgotPasswordScreen());
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: ThemeApp.primary900,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                DividerWithText(label: "or"),
                const SizedBox(height: 20.0),
                Button(
                  onPressed: () {},
                  title: "Continue with Google",
                  variant: ButtonVariant.social,
                  iconLeft: SvgPicture.asset("assets/svgs/google.svg"),
                ),
                const SizedBox(height: 20.0),
                Button(
                  onPressed: () {},
                  title: "Continue with Apple",
                  variant: ButtonVariant.social,
                  iconLeft: SvgPicture.asset("assets/svgs/apple.svg"),
                ),
                const SizedBox(height: 20.0),
                Button(
                  onPressed: () {},
                  title: "Continue with Facebook",
                  variant: ButtonVariant.social,
                  iconLeft: SvgPicture.asset("assets/svgs/facebook.svg"),
                ),
                const SizedBox(height: 20.0),
                Button(onPressed: () {}, title: "Log in"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
