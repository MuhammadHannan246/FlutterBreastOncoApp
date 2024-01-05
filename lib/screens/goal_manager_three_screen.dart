import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/set_goal_time_widget.dart';
import 'package:breast_onco/widgets/heading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoalManagerThreeScreen extends StatelessWidget {
  const GoalManagerThreeScreen({super.key});
  static const routeName = '/goal-manager-three';

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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                        fontWeight: FontWeight.bold,
                      ),
                  children: [
                    TextSpan(
                      text: 'You\'ll need to complete ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kTextColor,
                          ),
                    ),
                    TextSpan(
                      text: '22 CE hours ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: 'by no later than your license expiration date of ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kTextColor,
                          ),
                    ),
                    TextSpan(
                      text: 'May 31, 2025 ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
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
                    SetGoalTimeWidget(bold: '5', text: ' minute per day', time: 5),
                    SetGoalTimeWidget(bold: '1', text: ' day per week', time: 1),
                    SetGoalTimeWidget(bold: '5', text: ' minutes weekly', time: 5),
                    SetGoalTimeWidget(bold: '20', text: ' minutes monthly', time: 20),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/images/curly-arrow.svg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                width: size(context).width,
                decoration: BoxDecoration(
                  color: kPrimarySwatchColor.shade100,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'LOOKIN\' GOOD FORCOMPLETION BY 6-15-2025',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: kPrimarySwatchColor.shade700, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Text(
                  'Set Goal',
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
