import 'package:breast_onco/screens/trash/course_intro_four_screen.dart';
import 'package:breast_onco/widgets/bottom_nav_bar_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:breast_onco/themes/colors.dart';

class CourseIntroThreeScreen extends StatelessWidget {
  const CourseIntroThreeScreen({super.key});
  static const routeName = '/course-intro-three';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: 'Back',
          icon: Icon(Icons.chevron_left, color: kSecondarySwatchColor, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: ElevatedButton(
              onPressed: () {},
              style: Theme.of(context).elevatedButtonTheme.style,
              child: Text(
                'Learn',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kLightColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kSecondarySwatchColor[100],
        padding: const EdgeInsets.only(right: 20.0, left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Who is in charge of the enforcement of Fair Housing?',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: kSecondarySwatchColor.shade700, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ListTile(
              title: Text(
                'The National Association of Realtors (NAR)',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: kDarkColor,
                      fontSize: 18.0,
                    ),
              ),
              leading: Radio<String>(
                value: 'The National Association of Realto, rs (NAR)',
                groupValue: 'ABC',
                onChanged: (String? value) {},
              ),
            ),
            ListTile(
              title: Text(
                'The Federal Housing Finance Agency (FHFA)',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: kDarkColor,
                      fontSize: 18.0,
                    ),
              ),
              leading: Radio<String>(
                value: 'The Federal Housing Finance Agency (FHFA)',
                groupValue: 'ABC',
                onChanged: (String? value) {},
              ),
            ),
            ListTile(
              title: Text(
                'The Department of Housing and Urban Development (HUD)',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: kDarkColor,
                      fontSize: 18.0,
                    ),
              ),
              leading: Radio<String>(
                value: 'The Department of Housing and Urban Development (HUD)',
                groupValue: 'ABC',
                onChanged: (String? value) {},
              ),
            ),
            ListTile(
              title: Text(
                'The Environmental Protection Agency (EPA)',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: kDarkColor,
                      fontSize: 18.0,
                    ),
              ),
              leading: Radio<String>(
                value: 'The Environmental Protection Agency (EPA',
                groupValue: 'ABC',
                onChanged: (String? value) {},
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarButtonWidget(text: 'Continue', routeName: CourseIntroFourScreen.routeName),
    );
  }
}
