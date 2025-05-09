import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pomo/common/theme.dart';
import 'package:pomo/common/widgets/divider_with_text/divider_with_text.dart';
import 'package:pomo/common/widgets/input/input.dart';
import 'package:pomo/features/auth/get_started/presentation/login_screen.dart';

import '../../../../common/widgets/button/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  "Join Pomo Today 👤",
                  style: TextStyle(
                    color: ThemeApp.gray900,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  "Unlock Your Productivity Potential!",
                  style: TextStyle(
                    color: ThemeApp.gray700,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 32.0),
                Input(
                  label: "Email",
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Email",
                ),
                const SizedBox(height: 16.0),
                Input(
                  label: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: "Password",
                ),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: ThemeApp.gray900,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.push(const LoginScreen());
                      },
                      child: Text(
                        "Log in",
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
                Button(onPressed: () {}, title: "Sign up"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
