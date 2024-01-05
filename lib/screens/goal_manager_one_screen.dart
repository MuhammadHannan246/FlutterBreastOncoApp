import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/screens/goal_manager_two_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/goal_time_widget.dart';
import 'package:breast_onco/widgets/heading_widget.dart';
import 'package:flutter/material.dart';

class GoalManagerOneScreen extends StatelessWidget {
  const GoalManagerOneScreen({super.key});
  static const routeName = '/goal-manager-one';

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
        child: Container(
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
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                  children: [
                    TextSpan(
                      text: 'Your goals are ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kTextColor,
                          ),
                    ),
                    TextSpan(
                      text: 'automatically ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: 'set and adjusted to meet your completion goal date of: 04-30-2025',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kTextColor,
                          ),
                    ),
                  ],
                ),
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
                  Navigator.of(context).pushNamed(GoalManagerTwoScreen.routeName);
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Text(
                  'Modify',
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
