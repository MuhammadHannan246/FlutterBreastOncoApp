import 'package:breast_onco/screens/edit_patient_details_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class GoalListTile extends StatelessWidget {
  final IconData icon;
  final String personName;

  const GoalListTile({required this.icon, required this.personName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(16.0),
          leading: Icon(
            icon,
            color: kSecondarySwatchColor,
          ),
          title: Text(
            personName,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  Navigator.of(context).pushNamed(EditPatientDetailsScreen.routeName);
                  // Handle edit button press
                },
                color: kSecondarySwatchColor,
              ),
              IconButton(
                icon: Icon(Icons.visibility),
                onPressed: () {
                  // Handle view button press
                },
                color: kSecondarySwatchColor,
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  // Handle delete button press
                },
                color: kSecondarySwatchColor,
              ),
            ],
          ),
        ),
        Divider(height: 1.0, color: kTextColor),
      ],
    );
  }
}
