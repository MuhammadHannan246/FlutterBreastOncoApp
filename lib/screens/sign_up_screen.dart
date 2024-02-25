import 'package:breast_onco/screens/sign_in_screen.dart';
import 'package:breast_onco/screens/sign_up_one_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/sign_in_sign_up_prompt_widget.dart';
import 'package:breast_onco/widgets/on_board_list_tile_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/logo-purple.png',
                    // color: kSecondarySwatchColor,
                    height: 280,
                    fit: BoxFit.contain,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Text(
                //     'Breast Onco',
                //     style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                //           color: kSecondarySwatchColor,
                //           fontWeight: FontWeight.bold,
                //     )
                //   )
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
                  child: Text(
                    'Create an account withone of the options below!',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: kTextColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Column(
                  children: [
                    OnBoardListTileWidget(text: 'Sign up with Google', image: 'assets/images/gmail-icon.svg', routeName: SignUpOneScreen.routeName),
                    OnBoardListTileWidget(text: 'Sign up with Email', image: 'assets/images/email-icon.svg', routeName: SignUpOneScreen.routeName),
                  ],
                ),
                const SignInSignUpPromptWidget(text1: 'Already have an account?', text2: 'Sign In', routeName: SignInScreen.routeName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
