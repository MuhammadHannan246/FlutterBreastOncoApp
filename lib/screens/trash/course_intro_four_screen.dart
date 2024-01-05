import 'package:breast_onco/screens/trash/course_intro_five_screen.dart';
import 'package:breast_onco/widgets/bottom_nav_bar_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:breast_onco/themes/colors.dart';

class CourseIntroFourScreen extends StatelessWidget {
  const CourseIntroFourScreen({super.key});
  static const routeName = '/course-intro-four';

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Which logo belongs to the HUD?',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: kSecondarySwatchColor.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/oip2.png'),
                  Image.asset('assets/images/oip1.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/oip3.png'),
                  Image.asset('assets/images/oip4.png'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarButtonWidget(text: 'Continue', routeName: CourseIntroFiveScreen.routeName),
    );
  }
}
