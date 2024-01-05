import 'package:breast_onco/screens/onboard_goal_setup_one_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardManagementFourScreen extends StatefulWidget {
  const OnBoardManagementFourScreen({super.key});
  static const routeName = '/onboard-management-four';

  @override
  State<OnBoardManagementFourScreen> createState() => _OnBoardManagementFourScreenState();
}

class _OnBoardManagementFourScreenState extends State<OnBoardManagementFourScreen> {
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
                  OnboardBookmarkWidget(text: 'CE Management'),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                      child: Text(
                        'Got it.',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: kSecondarySwatchColor.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        'We\'ve recorded the following CE credits accordingly:',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: kTextColor,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                              ),
                          children: const [
                            TextSpan(
                              text: '2 credit hours ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'of ',
                            ),
                            TextSpan(
                              text: 'Agency Law',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        'These credit hours will be reflected in your goal manager and taken into account when we recommend classes to you.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: kTextColor,
                            ),
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
                              onPressed: () {
                                Navigator.of(context).pushNamed(OnBoardGoalSetupOneScreen.routeName);
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
    );
  }
}
