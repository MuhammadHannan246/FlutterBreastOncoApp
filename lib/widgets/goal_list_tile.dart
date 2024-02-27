import 'package:breast_onco/constants/repository.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class GoalListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String id;

  const GoalListTile({super.key, required this.icon, required this.title, required this.subtitle, required this.id});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(), // Use UniqueKey for each Dismissible to distinguish between items
      onDismissed: (DismissDirection direction) {
        // Handle item dismissal
        if (direction == DismissDirection.endToStart) {
          // Handle delete
        }
      },
      background: Container(
        color: kSecondarySwatchColor,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16.0),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      secondaryBackground: Container(
        color: kSecondarySwatchColor,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16.0),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            leading: Icon(
              icon,
              color: kSecondarySwatchColor,
            ),
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(subtitle),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                Repository.deletePatientData(context: context, id: id);
              },
              color: kSecondarySwatchColor,
            ),
          ),
          Divider(height: 1.0, color: kTextColor),
        ],
      ),
    );
  }
}
