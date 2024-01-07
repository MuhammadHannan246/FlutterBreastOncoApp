// Your existing screen file

import 'package:breast_onco/screens/onboard_plan_one_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:breast_onco/widgets/patient_info_widget.dart';
import 'package:flutter/material.dart';
// import 'PatientInfoWidget.dart'; // Import the new widget

class OnBoardReminderSevenScreen extends StatefulWidget {
  const OnBoardReminderSevenScreen({Key? key});
  static const routeName = '/onboard-reminder-seven';

  @override
  State<OnBoardReminderSevenScreen> createState() => _OnBoardReminderSevenScreenState();
}

class _OnBoardReminderSevenScreenState extends State<OnBoardReminderSevenScreen> {
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
                        percent: 1.0,
                        animationDuration: 2000,
                      ),
                    ),
                    OnboardBookmarkWidget(text: 'Predictions'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PatientInfoWidget(
                        firstName: 'John',
                        lastName: 'Doe',
                        age: '25',
                        contactNumber: '1234567890',
                        questionnaireResult: 'Positive',
                        imageModelResult: 'Negative',
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
                                style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                                  side: MaterialStateProperty.all<BorderSide>(BorderSide(color: kSecondarySwatchColor)),
                                ),
                                child: Text(
                                  'Back',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: kSecondarySwatchColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.of(context).pushNamed(OnBoardPlanOneScreen.routeName);
                                },
                                style: Theme.of(context).elevatedButtonTheme.style,
                                child: Text(
                                  'Dashboard',
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
