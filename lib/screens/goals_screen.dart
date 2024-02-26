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
              Text('Patients Details',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: kSecondarySwatchColor,
                        fontWeight: FontWeight.bold,
                      )),
              const GoalListTile(icon: Icons.person, personName: 'Haleema'),
              const GoalListTile(icon: Icons.person, personName: 'Tania'),
              const GoalListTile(icon: Icons.person, personName: 'Mishaal'),
              const GoalListTile(icon: Icons.person, personName: 'Ritu'),
              const GoalListTile(icon: Icons.person, personName: 'Priti'),
              const GoalListTile(icon: Icons.person, personName: 'Gul'),
              const GoalListTile(icon: Icons.person, personName: 'Saira'),
              const GoalListTile(icon: Icons.person, personName: 'Faheema'),
              const GoalListTile(icon: Icons.person, personName: 'Haseena'),
              const GoalListTile(icon: Icons.person, personName: 'Gulfi'),
              const GoalListTile(icon: Icons.person, personName: 'Fatima'),
              const GoalListTile(icon: Icons.person, personName: 'Ayesha'),
            ],
          ),
        ),
      ),
    );
  }
}
