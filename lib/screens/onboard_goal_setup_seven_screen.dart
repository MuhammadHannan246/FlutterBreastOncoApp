import 'package:breast_onco/screens/onboard_goal_setup_nine_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_eight_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardGoalSetupSevenScreen extends StatefulWidget {
  const OnBoardGoalSetupSevenScreen({super.key});
  static const routeName = '/onboard-goal-setup-seven';

  @override
  State<OnBoardGoalSetupSevenScreen> createState() => _OnBoardGoalSetupSevenScreenState();
}

class _OnBoardGoalSetupSevenScreenState extends State<OnBoardGoalSetupSevenScreen> {
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
                  OnboardBookmarkWidget(text: 'Goal Set-Up'),
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
                        'Hey, we\'ve got you if you fall behind.',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: kSecondarySwatchColor.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                      child: Text(
                        'Life gets busy, so if you fall behind, we\'ll auto adjust your goals so you\'ll aways be on track.',
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
                                  'Yes, always keep me on track!',
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
                                  'No, I\'ll adjust manually if needed.',
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
                                        Navigator.of(context).pushNamed(OnBoardGoalSetupEightScreen.routeName);
                                      } else if (selectedValue == 'No') {
                                        Navigator.of(context).pushNamed(OnBoardGoalSetupNineScreen.routeName);
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
    );
  }
}
