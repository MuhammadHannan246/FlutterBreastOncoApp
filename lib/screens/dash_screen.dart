import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class DashScreen extends StatelessWidget {
  const DashScreen({super.key});
  static const routeName = '/dash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Muhammad!',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: kSecondarySwatchColor,
                        fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Welcome to your dashboard',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                  )
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
