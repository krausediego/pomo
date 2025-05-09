import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pomo/common/theme.dart';
import 'package:pomo/common/widgets/button/button.dart';
import 'package:pomo/features/auth/get_started/presentation/login_screen.dart';
import 'package:pomo/features/auth/get_started/presentation/sign_up_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's Get Started",
                  style: TextStyle(
                    color: ThemeApp.gray900,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  "Let's dive in into your account",
                  style: TextStyle(
                    color: ThemeApp.gray700,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 48.5),
                Button(
                  onPressed: () {},
                  title: "Continue with Google",
                  variant: ButtonVariant.social,
                  iconLeft: SvgPicture.asset(
                    "assets/svgs/google.svg",
                    semanticsLabel: "Google logo",
                  ),
                ),
                const SizedBox(height: 20.0),
                Button(
                  onPressed: () {},
                  title: "Continue with Apple",
                  variant: ButtonVariant.social,
                  iconLeft: SvgPicture.asset(
                    "assets/svgs/apple.svg",
                    semanticsLabel: "Apple logo",
                  ),
                ),
                const SizedBox(height: 20.0),
                Button(
                  onPressed: () {},
                  title: "Continue with Facebook",
                  variant: ButtonVariant.social,
                  iconLeft: SvgPicture.asset(
                    "assets/svgs/facebook.svg",
                    semanticsLabel: "Facebook logo",
                  ),
                ),
                const SizedBox(height: 20.0),
                Button(
                  onPressed: () {},
                  title: "Continue with Twitter",
                  variant: ButtonVariant.social,
                  iconLeft: SvgPicture.asset(
                    "assets/svgs/twitter.svg",
                    semanticsLabel: "Twitter logo",
                  ),
                ),
                const SizedBox(height: 48.5),
                Button(
                  onPressed: () {
                    context.push(const SignUpScreen());
                  },
                  title: "Sign up",
                ),
                const SizedBox(height: 20.0),
                Button(
                  onPressed: () {
                    context.push(const LoginScreen());
                  },
                  title: "Log in",
                  variant: ButtonVariant.secondary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
