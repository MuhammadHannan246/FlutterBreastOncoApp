import 'package:breast_onco/screens/onboard_review_order_one_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/accordian_widget.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnboardPaymentOneScreen extends StatefulWidget {
  const OnboardPaymentOneScreen({Key? key}) : super(key: key);
  static const routeName = '/onboard-payment-one';

  @override
  State<OnboardPaymentOneScreen> createState() => _OnboardPaymentOneScreenState();
}

class _OnboardPaymentOneScreenState extends State<OnboardPaymentOneScreen> {
  bool isAccordionExpanded = false;

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
                    OnboardBookmarkWidget(text: 'Payment'),
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
                          'Select payment type:',
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                color: kSecondarySwatchColor.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Text(
                          'We\'re excited you\'re here! First up? Let\'s load your license info!',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                              ),
                        ),
                      ),
                      const AccordionWidget(title: 'Debit / Credit Card', image: 'assets/images/debit.svg'),
                      const AccordionWidget(title: 'PayPal', image: 'assets/images/paypal.svg'),
                      const AccordionWidget(title: 'Apple Pay', image: 'assets/images/apple-pay.svg'),
                      const AccordionWidget(title: 'Gift Card', image: 'assets/images/logo-blue.svg'),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       border: Border.all(
                      //         color: kTextColor,
                      //         width: 1.0,
                      //       ),
                      //       borderRadius: BorderRadius.circular(16.0),
                      //     ),
                      //     child: ListTile(
                      //       title: Row(
                      //         children: [
                      //           SvgPicture.asset(
                      //             'assets/images/apple-pay.svg',
                      //             width: 24,
                      //             height: 24,
                      //           ),
                      //           const SizedBox(width: 16.0),
                      //           Text(
                      //             'Apple Pay',
                      //             style: Theme.of(context).textTheme.bodyLarge,
                      //           ),
                      //         ],
                      //       ),
                      //       trailing: Radio(
                      //         value: true,
                      //         groupValue: isAccordionExpanded,
                      //         onChanged: (bool? value) {
                      //           setState(() {
                      //             isAccordionExpanded = value ?? false;
                      //           });
                      //         },
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(OnboardReviewOrderOneScreen.routeName);
                          },
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: Text(
                            'Submit Payment',
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
        ),
      ),
    );
  }
}
