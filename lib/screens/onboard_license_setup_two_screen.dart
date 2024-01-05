import 'package:breast_onco/screens/onboard_license_setup_three_screen.dart';
import 'package:breast_onco/screens/onboard_management_one_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardLicenseSetupTwoScreen extends StatefulWidget {
  const OnBoardLicenseSetupTwoScreen({super.key});
  static const routeName = '/onboard-license-setup-two';

  @override
  State<OnBoardLicenseSetupTwoScreen> createState() => _OnBoardLicenseSetupTwoScreenState();
}

class _OnBoardLicenseSetupTwoScreenState extends State<OnBoardLicenseSetupTwoScreen> {
  TextEditingController licenseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: CircularPercentIndicatorRabbitWidget(
                      animation: true,
                      percent: 0.5,
                      animationDuration: 2000,
                    ),
                  ),
                  OnboardBookmarkWidget(text: 'License Set-Up'),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                      child: Text(
                        'Let\'s find info',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: kSecondarySwatchColor.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        'Enter or look up your license info, so we can see what date your continuing education needs to be completed by.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: kTextColor,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password is wrong!';
                              } else {
                                return null;
                              }
                            },
                            controller: licenseController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: kTextColor, width: 1.0),
                              ),
                              hintText: 'Enter license number',
                              labelText: 'License #',
                              floatingLabelStyle: TextStyle(color: kSecondarySwatchColor.shade800),
                              hintStyle: TextStyle(color: kTextColor),
                              labelStyle: TextStyle(color: kTextColor),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: kSecondarySwatchColor.shade800),
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(OnBoardLicenseSetupThreeScreen.routeName);
                            },
                            visualDensity: VisualDensity.compact,
                            child: Text(
                              'Find my license #',
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: Theme.of(context).outlinedButtonTheme.style,
                              child: Text(
                                'Back',
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: kPrimarySwatchColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: licenseController.text.isNotEmpty
                                  ? () {
                                      Navigator.of(context).pushNamed(OnBoardLicenseSetupThreeScreen.routeName);
                                    }
                                  : null,
                              style: licenseController.text.isNotEmpty
                                  ? Theme.of(context).elevatedButtonTheme.style
                                  : Theme.of(context).elevatedButtonTheme.style!.copyWith(
                                        backgroundColor: MaterialStateProperty.all(kTextColor.withOpacity(0.4)),
                                      ),
                              child: Text(
                                'Next',
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: kLightColor,
                                      fontWeight: FontWeight.bold,
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
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(OnBoardManagementOneScreen.routeName);
                },
                visualDensity: VisualDensity.compact,
                child: Text(
                  'Skip this for now',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: kPrimarySwatchColor,
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
