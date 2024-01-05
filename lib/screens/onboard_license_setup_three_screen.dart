import 'package:breast_onco/screens/onboard_license_setup_four_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardLicenseSetupThreeScreen extends StatefulWidget {
  const OnBoardLicenseSetupThreeScreen({super.key});
  static const routeName = '/onboard-license-setup-three';

  @override
  State<OnBoardLicenseSetupThreeScreen> createState() => _OnBoardLicenseSetupThreeScreenState();
}

class _OnBoardLicenseSetupThreeScreenState extends State<OnBoardLicenseSetupThreeScreen> {
  String selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                      child: Text(
                        'Here\'s some options',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: kSecondarySwatchColor.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'We found ',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                              ),
                          children: const [
                            TextSpan(
                              text: '2',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' licenses that match the information you entered.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Radio(
                                  fillColor: Theme.of(context).radioTheme.fillColor,
                                  value: '1',
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value.toString();
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Terrie Smith',
                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              color: kTextColor,
                                            ),
                                      ),
                                      Text(
                                        'Highland Real Estate',
                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              color: kTextColor,
                                            ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                color: kTextColor,
                                              ),
                                          children: const [
                                            TextSpan(
                                              text: 'License #: ',
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(text: '123456 '),
                                            TextSpan(
                                              text: 'Type: ',
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(text: 'Salesperson'),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                color: kTextColor,
                                              ),
                                          children: const [
                                            TextSpan(
                                              text: 'Status: ',
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(text: 'Inactive'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Radio(
                                  fillColor: Theme.of(context).radioTheme.fillColor,
                                  value: '2',
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value.toString();
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Terrie Smith',
                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              color: kTextColor,
                                            ),
                                      ),
                                      Text(
                                        'Highland Real Estate',
                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              color: kTextColor,
                                            ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                color: kTextColor,
                                              ),
                                          children: const [
                                            TextSpan(
                                              text: 'License #: ',
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(text: '123456 '),
                                            TextSpan(
                                              text: 'Type: ',
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(text: 'Salesperson'),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                color: kTextColor,
                                              ),
                                          children: const [
                                            TextSpan(
                                              text: 'Status: ',
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(text: 'Inactive'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  fillColor: Theme.of(context).radioTheme.fillColor,
                                  value: 'None of the above',
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value.toString();
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'None of the above',
                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              color: kTextColor,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                              onPressed: selectedValue.isNotEmpty
                                  ? () {
                                      Navigator.of(context).pushNamed(OnBoardLicenseSetupFourScreen.routeName);
                                    }
                                  : null,
                              style: selectedValue.isNotEmpty
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
