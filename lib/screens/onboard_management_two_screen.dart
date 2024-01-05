import 'package:breast_onco/screens/onboard_goal_setup_one_screen.dart';
import 'package:breast_onco/screens/onboard_management_three_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:breast_onco/widgets/onboard_set_ce_management_widget.dart';
import 'package:flutter/material.dart';

class OnBoardManagementTwoScreen extends StatefulWidget {
  const OnBoardManagementTwoScreen({super.key});
  static const routeName = '/onboard-management-two';

  @override
  State<OnBoardManagementTwoScreen> createState() => _OnBoardManagementTwoScreenState();
}

class _OnBoardManagementTwoScreenState extends State<OnBoardManagementTwoScreen> {
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
                    OnboardBookmarkWidget(text: 'CE Management'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                      child: Text(
                        'Let\'s enter manual credits below:',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: kSecondarySwatchColor.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          OnBoardSetCEManagementWidget(text1: 'Agency Law', text2: '(0/3 hours required)', credit: 0),
                          OnBoardSetCEManagementWidget(text1: 'Contract Law', text2: '(0/3 hours required)', credit: 0),
                          OnBoardSetCEManagementWidget(text1: 'Commissioner\'s Standards', text2: '(0/3 hours required)', credit: 0),
                          OnBoardSetCEManagementWidget(text1: 'Disclosure', text2: '(0/3 hours required)', credit: 0),
                          OnBoardSetCEManagementWidget(text1: 'Fair Housing', text2: '(0/3 hours required)', credit: 0),
                          OnBoardSetCEManagementWidget(text1: 'Legal Issues', text2: '(0/3 hours required)', credit: 0),
                          OnBoardSetCEManagementWidget(text1: 'General', text2: '(0/3 hours required)', credit: 0),
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
                              onPressed: () {
                                Navigator.of(context).pushNamed(OnBoardManagementThreeScreen.routeName);
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
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(OnBoardGoalSetupOneScreen.routeName);
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
      ),
    );
  }
}
