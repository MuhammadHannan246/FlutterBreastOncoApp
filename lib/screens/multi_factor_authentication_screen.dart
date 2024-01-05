import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/screens/alternate_verification_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MultiFactorAuthenticationScreen extends StatefulWidget {
  const MultiFactorAuthenticationScreen({super.key});
  static const routeName = '/multi-factor-authentication';

  @override
  State<MultiFactorAuthenticationScreen> createState() => _MultiFactorAuthenticationScreenState();
}

class _MultiFactorAuthenticationScreenState extends State<MultiFactorAuthenticationScreen> {
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 32.0),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
                        child: Text(
                          'Verify it\'s you! We\'ve sent a code to your mobile phone ending in 0516. Enter the one-time code below.',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: kTextColor,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0, bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextFormField(
                              controller: codeController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: kTextColor, width: 1.0),
                                ),
                                labelText: 'Enter Code',
                                hintText: 'XXXXXXXX',
                                floatingLabelStyle: TextStyle(color: kSecondarySwatchColor.shade800),
                                hintStyle: TextStyle(color: kTextColor),
                                labelStyle: TextStyle(color: kTextColor),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 2, color: kSecondarySwatchColor.shade800),
                                ),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              visualDensity: VisualDensity.compact,
                              child: Text(
                                'GET HELP',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                        child: SizedBox(
                          width: size(context).width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(AlternateVerificationScreen.routeName);
                            },
                            style: Theme.of(context).elevatedButtonTheme.style,
                            child: Text(
                              'Continue',
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: kLightColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
