import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/screens/onboard_goal_setup_seven_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/goal_time_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardGoalSetupFourScreen extends StatefulWidget {
  const OnBoardGoalSetupFourScreen({super.key});
  static const routeName = '/onboard-goal-setup-four';

  @override
  State<OnBoardGoalSetupFourScreen> createState() => _OnBoardGoalSetupFourScreenState();
}

class _OnBoardGoalSetupFourScreenState extends State<OnBoardGoalSetupFourScreen> {
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
                          'Ok, here\'s the plan...',
                          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                color: kSecondarySwatchColor.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: kTextColor,
                                ),
                            children: const [
                              TextSpan(text: 'In order to complete your remaining '),
                              TextSpan(
                                text: '22 CE hours ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'of CE by your goal date of '),
                              TextSpan(
                                text: 'June 8, 2025',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: ', you will need to meet the below goals.'),
                            ],
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
                              const GoalTimeWidget(bold: '5', text: 'minutes per day'),
                              const GoalTimeWidget(bold: '3', text: 'days per week'),
                              const GoalTimeWidget(bold: '15', text: 'minutes weekly'),
                              const GoalTimeWidget(bold: '50', text: 'minutes monthly'),
                              Align(
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  'assets/images/curly-arrow.svg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(16.0),
                                width: size(context).width,
                                decoration: BoxDecoration(
                                  color: kPrimarySwatchColor.shade100,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'LOOKIN\' GOOD FORCOMPLETION BY 6-15-2025',
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: kPrimarySwatchColor.shade700, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
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
                                  Navigator.of(context).pushNamed(OnBoardGoalSetupSevenScreen.routeName);
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
