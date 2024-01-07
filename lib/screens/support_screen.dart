import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/goal_list_tile.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);
  static const routeName = '/goals-one';

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
                'Previous Records',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: kSecondarySwatchColor,
                  fontWeight: FontWeight.bold,
                )
              ),
              GoalListTile(icon: Icons.person, personName: 'Record 1'),
              GoalListTile(icon: Icons.person, personName: 'Record 2'),
              GoalListTile(icon: Icons.person, personName: 'Record 3'),
              GoalListTile(icon: Icons.person, personName: 'Record 4'),
              GoalListTile(icon: Icons.person, personName: 'Record 5'),
              GoalListTile(icon: Icons.person, personName: 'Record 6'),
              GoalListTile(icon: Icons.person, personName: 'Record 7'),
              GoalListTile(icon: Icons.person, personName: 'Record 8'),
              GoalListTile(icon: Icons.person, personName: 'Record 9'),
              GoalListTile(icon: Icons.person, personName: 'Record 10'),
              GoalListTile(icon: Icons.person, personName: 'Record 11'),
              GoalListTile(icon: Icons.person, personName: 'Record 12'),
              // Add more GoalListTiles as needed
            ],
          ),
        ),
      ),
    );
  }
}
