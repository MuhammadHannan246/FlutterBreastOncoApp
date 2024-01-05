import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/goal_list_tile.dart';
import 'package:flutter/material.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({Key? key}) : super(key: key);
  static const routeName = '/goals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'Patients Details',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: kSecondarySwatchColor,
                  fontWeight: FontWeight.bold,
                )
              ),
              GoalListTile(icon: Icons.person, personName: 'Patient 1'),
              GoalListTile(icon: Icons.person, personName: 'Patient 2'),
              GoalListTile(icon: Icons.person, personName: 'Patient 3'),
              GoalListTile(icon: Icons.person, personName: 'Patient 4'),
              GoalListTile(icon: Icons.person, personName: 'Patient 5'),
              GoalListTile(icon: Icons.person, personName: 'Patient 6'),
              GoalListTile(icon: Icons.person, personName: 'Patient 7'),
              GoalListTile(icon: Icons.person, personName: 'Patient 8'),
              GoalListTile(icon: Icons.person, personName: 'Patient 9'),
              GoalListTile(icon: Icons.person, personName: 'Patient 10'),
              GoalListTile(icon: Icons.person, personName: 'Patient 11'),
              GoalListTile(icon: Icons.person, personName: 'Patient 12'),
              // Add more GoalListTiles as needed
            ],
          ),
        ),
      ),
    );
  }
}
