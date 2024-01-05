import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/heading_widget.dart';
import 'package:flutter/material.dart';

class CoursesFiltersScreen extends StatefulWidget {
  const CoursesFiltersScreen({super.key});
  static const routeName = '/course-filters';

  @override
  State<CoursesFiltersScreen> createState() => _CoursesFiltersScreenState();
}

class _CoursesFiltersScreenState extends State<CoursesFiltersScreen> {
  bool firstCheckBoxValue = false;
  late int selectedRadioValue;

  @override
  void initState() {
    super.initState();
    selectedRadioValue = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: kSecondarySwatchColor, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingWidget(heading: 'Course filters'),
            const SizedBox(height: 10),
            Container(
              height: 1,
              width: size(context).width,
              color: kTextColor,
            ),
            const SizedBox(height: 20),
            Text(
              'Filter courses according to the options below',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kTextColor,
                  ),
            ),
            Row(
              children: [
                Checkbox(
                  value: firstCheckBoxValue,
                  activeColor: kPrimarySwatchColor,
                  onChanged: (value) {
                    setState(() {
                      firstCheckBoxValue = value!;
                    });
                  },
                ),
                Text(
                  'Hide courses I\'ve already taken',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                ),
              ],
            ),
            if (firstCheckBoxValue)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          fillColor: Theme.of(context).radioTheme.fillColor,
                          groupValue: selectedRadioValue,
                          onChanged: (value) {
                            setState(() {
                              selectedRadioValue = value!;
                            });
                          },
                        ),
                        Text(
                          'Ever',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                              ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          fillColor: Theme.of(context).radioTheme.fillColor,
                          groupValue: selectedRadioValue,
                          onChanged: (value) {
                            setState(() {
                              selectedRadioValue = value!;
                            });
                          },
                        ),
                        Text(
                          'Since last certification cycle',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            Row(
              children: [
                Checkbox(
                  value: firstCheckBoxValue,
                  activeColor: kPrimarySwatchColor,
                  onChanged: (value) {
                    setState(() {
                      firstCheckBoxValue = value!;
                    });
                  },
                ),
                Text(
                  'Eligible for CE credit',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: firstCheckBoxValue,
                  activeColor: kPrimarySwatchColor,
                  onChanged: (value) {
                    setState(() {
                      firstCheckBoxValue = value!;
                    });
                  },
                ),
                Text(
                  'Not eligible for CE credit',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: firstCheckBoxValue,
                  activeColor: kPrimarySwatchColor,
                  onChanged: (value) {
                    setState(() {
                      firstCheckBoxValue = value!;
                    });
                  },
                ),
                Text(
                  'Only show courses started',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: firstCheckBoxValue,
                  activeColor: kPrimarySwatchColor,
                  onChanged: (value) {
                    setState(() {
                      firstCheckBoxValue = value!;
                    });
                  },
                ),
                Text(
                  'Only show courses I\'ve finished',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
