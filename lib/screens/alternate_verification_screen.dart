import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/screens/onboard_state_setup_one_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlternateVerificationScreen extends StatelessWidget {
  const AlternateVerificationScreen({super.key});
  static const routeName = '/alternate-verification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: size(context).width,
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: SizedBox(
            height: size(context).height * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset(
                    'assets/images/logo-blue.svg',
                    colorFilter: ColorFilter.mode(kSecondarySwatchColor.shade800, BlendMode.srcATop),
                    height: 160,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset(
                    'assets/images/dashce.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Woohoo, you did it! Well, almost.\n\n Click the verification link in the email we sent you to complete your account registration and start learning!',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 32.0,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(OnBoardStateSetupOneScreen.routeName);
                  },
                  style: Theme.of(context).outlinedButtonTheme.style,
                  child: Text(
                    'Re-send confirmation email',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: kPrimarySwatchColor,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
