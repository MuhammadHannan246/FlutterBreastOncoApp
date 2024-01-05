import 'package:breast_onco/screens/onboard_license_setup_five_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardLicenseSetupFourScreen extends StatefulWidget {
  const OnBoardLicenseSetupFourScreen({super.key});
  static const routeName = '/onboard-license-setup-four';

  @override
  State<OnBoardLicenseSetupFourScreen> createState() => _OnBoardLicenseSetupFourScreenState();
}

class _OnBoardLicenseSetupFourScreenState extends State<OnBoardLicenseSetupFourScreen> {
  TextEditingController licenseController = TextEditingController();
  String monthSelectedValue = 'Select Month';
  String yearSelectedValue = 'Select Year';

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
                    OnboardBookmarkWidget(text: 'License Set-Up'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                      child: Text(
                        'Please enter info',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: kSecondarySwatchColor.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        'Please enter your information below and we will work on verifying your license info.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: kTextColor,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is wrong!';
                          } else {
                            return null;
                          }
                        },
                        controller: licenseController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: kTextColor, width: 1.0),
                          ),
                          hintText: 'Enter license number',
                          labelText: 'License # (optional)',
                          floatingLabelStyle: TextStyle(color: kSecondarySwatchColor.shade800),
                          hintStyle: TextStyle(color: kTextColor),
                          labelStyle: TextStyle(color: kTextColor),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: kSecondarySwatchColor.shade800),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 32.0,
                              right: 8.0,
                            ),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                                border: Border.all(
                                  color: kTextColor,
                                  width: 1.0,
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: monthSelectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      monthSelectedValue = value!;
                                    });
                                  },
                                  items: [
                                    'Select Month',
                                    'January',
                                    'February',
                                    'March',
                                    'April',
                                    'May',
                                    'June',
                                    'July',
                                    'August',
                                    'September',
                                    'October',
                                    'November',
                                    'December',
                                  ].map((option) {
                                    return DropdownMenuItem<String>(
                                      value: option,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          option,
                                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                color: kTextColor,
                                              ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 32.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                                border: Border.all(
                                  color: kTextColor,
                                  width: 1.0,
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: yearSelectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      yearSelectedValue = value!;
                                    });
                                  },
                                  items: [
                                    'Select Year',
                                    '2000',
                                    '2001',
                                    '2002',
                                    '2003',
                                    '2004',
                                    '2005',
                                    '2006',
                                    '2007',
                                    '2008',
                                    '2009',
                                    '2010',
                                    '2011',
                                    '2012',
                                    '2013',
                                    '2014',
                                    '2015',
                                    '2016',
                                    '2017',
                                    '2018',
                                    '2019',
                                    '2020',
                                    '2021',
                                    '2022',
                                    '2023',
                                    '2024',
                                  ].map((option) {
                                    return DropdownMenuItem<String>(
                                      value: option,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          option,
                                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                color: kTextColor,
                                              ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                              onPressed: monthSelectedValue != 'Select Month' && yearSelectedValue != 'Select Year'
                                  ? () {
                                      Navigator.of(context).pushNamed(OnBoardLicenseSetupFiveScreen.routeName);
                                    }
                                  : null,
                              style: monthSelectedValue != 'Select Month' && yearSelectedValue != 'Select Year'
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
