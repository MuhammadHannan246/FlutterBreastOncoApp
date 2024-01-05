import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/screens/goal_manager_three_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/goal_time_widget.dart';
import 'package:breast_onco/widgets/heading_widget.dart';
import 'package:flutter/material.dart';

class GoalManagerTwoScreen extends StatelessWidget {
  const GoalManagerTwoScreen({super.key});
  static const routeName = '/goal-manager-two';

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
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadingWidget(heading: 'Goal manager'),
              const SizedBox(height: 10),
              Container(
                height: 1,
                width: size(context).width,
                color: kTextColor,
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kSecondarySwatchColor.shade700,
                          ),
                      children: [
                        TextSpan(
                          text: 'Your completion goal date is:',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        TextSpan(
                          text: ' 04-30-2025',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pushNamedAndRemoveUntil(TabsScreen.routeName, (Route route) => false);
                    },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: Text(
                      'Edit',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GoalTimeWidget(bold: '5', text: ' minutes per day'),
                    GoalTimeWidget(bold: '3', text: ' days per week'),
                    GoalTimeWidget(bold: '15', text: ' minutes weekly'),
                    GoalTimeWidget(bold: '60', text: ' minutes monthly'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(GoalManagerThreeScreen.routeName);
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Text(
                  'Switch to manual goal setting',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kLightColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
