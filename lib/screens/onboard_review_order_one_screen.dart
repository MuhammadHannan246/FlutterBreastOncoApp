import 'package:breast_onco/screens/onboard_review_order_two_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:breast_onco/widgets/onboard_plan_widget.dart';
import 'package:flutter/material.dart';

class OnboardReviewOrderOneScreen extends StatefulWidget {
  const OnboardReviewOrderOneScreen({super.key});
  static const routeName = '/onboard-review-order-one';

  @override
  State<OnboardReviewOrderOneScreen> createState() => _OnboardReviewOrderOneScreenState();
}

class _OnboardReviewOrderOneScreenState extends State<OnboardReviewOrderOneScreen> {
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
                        percent: 0.25,
                        animationDuration: 2000,
                      ),
                    ),
                    OnboardBookmarkWidget(text: 'Review order'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your plan',
                              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                    color: kSecondarySwatchColor.shade700,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'Monthly Dash Pass',
                              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                    color: kPrimarySwatchColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Column(
                          children: [
                            OnboardPlanWidget(text: 'One class pass per month'),
                            OnboardPlanWidget(text: 'Easy 5-minute mini-modules'),
                            OnboardPlanWidget(text: 'Goal Manager & auto reminders'),
                            OnboardPlanWidget(text: 'Email badges & promo posts'),
                            OnboardPlanWidget(text: 'Access via mobile or desktop app'),
                            OnboardPlanWidget(text: 'Access to extra classes at \$10'),
                            OnboardPlanWidget(text: 'Class passes roll over (up to 8)'),
                            Divider(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Payment',
                              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                    color: kSecondarySwatchColor.shade700,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              '\$13 / month on Amex ending in 3454 ',
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: kTextColor,
                                  ),
                            ),
                          ],
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
                                  Navigator.of(context).pushNamed(OnboardReviewOrderTwoScreen.routeName);
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
