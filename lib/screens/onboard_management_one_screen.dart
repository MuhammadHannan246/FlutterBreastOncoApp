import 'package:breast_onco/screens/onboard_management_five_screen.dart';
import 'package:breast_onco/screens/onboard_management_six_screen.dart';
import 'package:breast_onco/screens/onboard_management_two_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardManagementOneScreen extends StatefulWidget {
  const OnBoardManagementOneScreen({super.key});
  static const routeName = '/onboard-management-one';

  @override
  State<OnBoardManagementOneScreen> createState() => _OnBoardManagementOneScreenState();
}

class _OnBoardManagementOneScreenState extends State<OnBoardManagementOneScreen> {
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
                    OnboardBookmarkWidget(text: 'CE Management'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Text(
                          'Your continuing education is due by:',
                          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                color: kSecondarySwatchColor.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          '6/31/2025',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: kPrimarySwatchColor,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Text(
                          'Have you earned any CE credits since your last renewal date of 6/31/2023?',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    fillColor: Theme.of(context).radioTheme.fillColor,
                                    value: 'Yes',
                                    groupValue: selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value.toString();
                                      });
                                    },
                                  ),
                                  Text(
                                    'Yes',
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                          color: kTextColor,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    fillColor: Theme.of(context).radioTheme.fillColor,
                                    value: 'No',
                                    groupValue: selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value.toString();
                                      });
                                    },
                                  ),
                                  Text(
                                    'No',
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                          color: kTextColor,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    fillColor: Theme.of(context).radioTheme.fillColor,
                                    value: 'I\'m not sure',
                                    groupValue: selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value.toString();
                                      });
                                    },
                                  ),
                                  Text(
                                    'I\'m not sure',
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                          color: kTextColor,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
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
                                        if (selectedValue == 'Yes') {
                                          Navigator.of(context).pushNamed(OnBoardManagementTwoScreen.routeName);
                                        } else if (selectedValue == 'No') {
                                          Navigator.of(context).pushNamed(OnBoardManagementFiveScreen.routeName);
                                        } else if (selectedValue == 'I\'m not sure') {
                                          Navigator.of(context).pushNamed(OnBoardManagementSixScreen.routeName);
                                        }
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
