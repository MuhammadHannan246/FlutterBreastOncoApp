import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/screens/onboard_license_setup_one_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardStateSetupOneScreen extends StatefulWidget {
  const OnBoardStateSetupOneScreen({super.key});
  static const routeName = '/onboard-state-setup-one';

  @override
  State<OnBoardStateSetupOneScreen> createState() => _OnBoardStateSetupOneScreenState();
}

class _OnBoardStateSetupOneScreenState extends State<OnBoardStateSetupOneScreen> {
  String selectedValue = 'Please select state';

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
                  OnboardBookmarkWidget(text: 'State Set-Up'),
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
                        'Hi, Terrie.',
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                      child: Container(
                        height: 60,
                        width: size(context).width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                          border: Border.all(
                            color: kTextColor,
                            width: 1.0,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                            items: [
                              'Please select state',
                              'Arizona',
                              'Ohio'
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
                    Container(
                      width: size(context).width,
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                      child: ElevatedButton(
                        onPressed: selectedValue != 'Please select state'
                            ? () {
                                Navigator.of(context).pushNamed(OnBoardLicenseSetupOneScreen.routeName);
                              }
                            : null,
                        style: selectedValue != 'Please select state'
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
      ),
    );
  }
}
