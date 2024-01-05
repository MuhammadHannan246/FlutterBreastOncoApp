import 'package:breast_onco/screens/onboard_reminder_six_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardReminderFiveScreen extends StatefulWidget {
  const OnBoardReminderFiveScreen({super.key});
  static const routeName = '/onboard-reminder-five';

  @override
  State<OnBoardReminderFiveScreen> createState() => _OnBoardReminderFiveScreenState();
}

class _OnBoardReminderFiveScreenState extends State<OnBoardReminderFiveScreen> {
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
                    OnboardBookmarkWidget(text: 'Reminders'),
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
                          'Hey, should we ramp it up towards the end?',
                          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                color: kSecondarySwatchColor.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Text(
                          'If you are within 30 days of your license expiration date, do you want us to give you daily reminders?',
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
                                    value: 'Nope',
                                    groupValue: selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value.toString();
                                      });
                                    },
                                  ),
                                  Text(
                                    'Nope, weekly is just fine',
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
                                    value: 'Yes',
                                    groupValue: selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value.toString();
                                      });
                                    },
                                  ),
                                  Text(
                                    'Yes, nag me please',
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
                                onPressed: () {
                                  if (selectedValue.isNotEmpty) {
                                    Navigator.of(context).pushNamed(OnBoardReminderSixScreen.routeName);
                                  }
                                },
                                style: Theme.of(context).elevatedButtonTheme.style,
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
