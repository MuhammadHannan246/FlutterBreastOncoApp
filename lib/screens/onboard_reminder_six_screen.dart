import 'package:breast_onco/screens/onboard_reminder_seven_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class OnBoardReminderSixScreen extends StatefulWidget {
  const OnBoardReminderSixScreen({super.key});
  static const routeName = '/onboard-reminder-six';

  @override
  State<OnBoardReminderSixScreen> createState() => _OnBoardReminderSixScreenState();
}

class _OnBoardReminderSixScreenState extends State<OnBoardReminderSixScreen> {
  List<File> selectedImages = [];

  Future<void> _pickImages() async {
    final List<XFile> pickedImages = await ImagePicker().pickMultiImage(
      imageQuality: 80,
      maxHeight: 800,
      maxWidth: 800,
    );

    setState(() {
      selectedImages = pickedImages.map((XFile file) => File(file.path)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(32.0),
                      child: CircularPercentIndicatorRabbitWidget(
                        animation: true,
                        percent: 0.5,
                        animationDuration: 2000,
                      ),
                    ),
                    OnboardBookmarkWidget(text: 'Mammo Model'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Text(
                          'Select Mammogramme Images from Gallery',
                          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                color: kSecondarySwatchColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Text(
                          'You can pick multiple images from your phone gallery.',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kTextColor,
                              ),
                        ),
                      ),
                      // Display selected images
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: selectedImages
                            .map(
                              (File image) => Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: FileImage(image),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ElevatedButton(
                          onPressed: _pickImages,
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: Text(
                            'Pick Images',
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: kLightColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                                      side: MaterialStateProperty.all<BorderSide>(BorderSide(color: kSecondarySwatchColor)),
                                    ),
                                child: Text(
                                  'Back',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: kSecondarySwatchColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                    OnBoardReminderSevenScreen.routeName,
                                    arguments: {
                                      'firstName': 'John',
                                      'lastName': 'Doe',
                                      'age': '25',
                                      'contactNumber': '1234567890',
                                      'questionnaireResult': 'Positive',
                                      'imageModelResult': 'Negative',
                                    },
                                  );
                                },
                                style: Theme.of(context).elevatedButtonTheme.style,
                                child: Text(
                                  'Next',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: kLightColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
