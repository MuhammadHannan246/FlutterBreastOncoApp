import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardManagementSixScreen extends StatefulWidget {
  const OnBoardManagementSixScreen({super.key});
  static const routeName = '/onboard-management-six';

  @override
  State<OnBoardManagementSixScreen> createState() => _OnBoardManagementSixScreenState();
}

class _OnBoardManagementSixScreenState extends State<OnBoardManagementSixScreen> {
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
                          'Not sure? No worries.',
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
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(
                                text: 'You can manually add credit hours earned outside of ',
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: kTextColor,
                                    ),
                              ),
                              TextSpan(
                                text: 'Dash',
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: kPrimarySwatchColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: 'U',
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: kSecondarySwatchColor.shade800,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: ' at any time.',
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: kTextColor,
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
                                  // Navigator.of(context).pushNamed(OnBoardThreeLicenseScreen.routeName);
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
