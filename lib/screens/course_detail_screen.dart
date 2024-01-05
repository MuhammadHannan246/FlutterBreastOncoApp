import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/goal_time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/courses-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/course-image.jpg',
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 16.0,
                    left: 16.0,
                    child: IconButton(
                      icon: Icon(Icons.chevron_left, color: kSecondarySwatchColor, size: 30),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Contract Law Fundamentals',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: kSecondarySwatchColor.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '3 credit hours | 1 Dash Pass',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: kSecondarySwatchColor.shade700,
                            ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 22.0,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber, size: 16.0),
                            onRatingUpdate: (rating) {},
                          ),
                          Text(
                            '(read reviews)',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.all(16.0),
                      width: size(context).width,
                      decoration: BoxDecoration(
                        color: kSecondarySwatchColor.shade50,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'This course fulfills General or Contracts CE requirements, which you still need.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: kTextColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Description',
                            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                  color: kSecondarySwatchColor.shade700,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "If you're an agent who's looking for a course that raises your game in the world of Contracts, you’ve found it! Packed with interesting case studies, interactive quizzes, and more!",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: kTextColor,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Course details',
                            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                  color: kSecondarySwatchColor.shade700,
                                ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GoalTimeWidget(bold: '5', text: ' minutes per day'),
                              GoalTimeWidget(bold: '3', text: ' days per week'),
                              GoalTimeWidget(bold: '15', text: ' minutes weekly'),
                              GoalTimeWidget(bold: '60', text: ' minutes monthly'),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
