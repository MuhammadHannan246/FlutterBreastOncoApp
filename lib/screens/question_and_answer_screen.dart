import 'package:breast_onco/screens/select_image_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class QuestionAndAnswerScreen extends StatefulWidget {
  const QuestionAndAnswerScreen({Key? key}) : super(key: key);
  static const routeName = '/question-and-answer';

  @override
  State<QuestionAndAnswerScreen> createState() => _QuestionAndAnswerScreenState();
}

class _QuestionAndAnswerScreenState extends State<QuestionAndAnswerScreen> {
  final List<String> questions = [
    "Positive Family Hx for Breast CA",
    "At what age did you birth to your first child?",
    "Have you ever been diagnosed with breast cancer before?",
    "Do you have a family history of breast cancer, particularly in a first-degree relative (such as a mother)?",
    "Have you ever had abnormal breast biopsies or other breast conditions?",
    "Have you ever undergone radiation therapy to the chest area?",
    "Have you ever taken hormone replacement therapy or oral contraceptives?",
    "At what age did you start menstruating?",
    "Have you ever been pregnant, and if so, how many times and at what ages?",
    "At what age did you reach menopause, if applicable?",
    "Do you consume alcohol, and if so, how many drinks per week on average?",
    "Are you physically active on a regular basis?",
    "Have you been exposed to environmental pollutants, such as pesticides or chemicals used in plastics?",
    "Are you a working woman? Which sector do you belong to?",
    "Do you shield yourself in that environment?",
    "Does any bloody fluid leak from the nipple?",
    "Is there a lump in the breast or underarm?",
    "Is there any dimpling of skin in the breast?",
    "Is there any change in your nipple position, i.e., pushed inside or pulled away from the center?",
    "Does your skin change, such as redness or swelling that does not go away?",
    "Have you experienced a recent change in the size or shape of the breast?",
    "Do you have new pain at a specific point in that breast that does not go away?",
    "Is there redness or flaky skin in the nipple area of the breast?",
    "Do you have any constant backache that is increasing with the passage of time? Have you suffered any bone fractures recently after trivial injury that is non-healing?",
    "Are you recently suffering from shortness of breath, difficulty breathing, non-settling cough by any medications, chest wall pain, or extreme fatigue?",
    "Do you feel nauseated, extremely fatigued, increased abdominal girth, swelling in feet and hands, or itchy skin?",
    "Do you suffer from a recent onset of constant headaches, blurred or double vision, difficulty with speech, difficulty with movements, or seizures?"
  ];

  Map<int, int> answers = {};

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
                        percent: 1.0,
                        animationDuration: 2000,
                      ),
                    ),
                    OnboardBookmarkWidget(text: 'Question & Answer'),
                  ],
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Q${index + 1}. ${questions[index]}'),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 4,
                                groupValue: answers[index],
                                onChanged: (value) {
                                  setState(() {
                                    answers[index] = value!;
                                  });
                                },
                              ),
                              const Text('Strongly Agree'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: answers[index],
                                onChanged: (value) {
                                  setState(() {
                                    answers[index] = value!;
                                  });
                                },
                              ),
                              const Text('Agree'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: answers[index],
                                onChanged: (value) {
                                  setState(() {
                                    answers[index] = value!;
                                  });
                                },
                              ),
                              const Text('Disagree'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: answers[index],
                                onChanged: (value) {
                                  setState(() {
                                    answers[index] = value!;
                                  });
                                },
                              ),
                              const Text('Strongly Disagree'),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                                side: MaterialStateProperty.all(BorderSide(color: kSecondarySwatchColor)),
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
                            Navigator.of(context).pushNamed(SelectImageScreen.routeName, arguments: answers);
                          },
                          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                                backgroundColor: MaterialStateProperty.all(kSecondarySwatchColor),
                              ),
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
        ),
      ),
    );
  }
}
