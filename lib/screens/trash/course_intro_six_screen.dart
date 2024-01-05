import 'package:breast_onco/screens/trash/course_intro_seven_screen.dart';
import 'package:breast_onco/widgets/bottom_nav_bar_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:breast_onco/themes/colors.dart';

class CourseIntroSixScreen extends StatelessWidget {
  const CourseIntroSixScreen({super.key});
  static const routeName = '/course-intro-six';

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
        color: kSecondarySwatchColor.shade100,
        padding: const EdgeInsets.only(right: 20.0, left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/equal-housing-logo.png'),
            Text(
              'Real Estate agents are required to put the above logo on all printed materials.',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: kSecondarySwatchColor.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                        backgroundColor: MaterialStatePropertyAll(kSecondarySwatchColor.shade200),
                      ),
                  child: Text(
                    'True',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: kSecondarySwatchColor.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                        backgroundColor: MaterialStatePropertyAll(kSecondarySwatchColor.shade200),
                      ),
                  child: Text(
                    'False',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: kSecondarySwatchColor.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarButtonWidget(text: 'Continue', routeName: CourseIntroSevenScreen.routeName),
    );
  }
}
