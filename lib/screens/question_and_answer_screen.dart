import 'package:breast_onco/screens/select_image_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:breast_onco/widgets/question_radio_widget.dart';
import 'package:flutter/material.dart';
// Import the new file

class QuestionAndAnswerScreen extends StatefulWidget {
  const QuestionAndAnswerScreen({Key? key}) : super(key: key);
  static const routeName = '/question-and-answer';

  @override
  State<QuestionAndAnswerScreen> createState() => _QuestionAndAnswerScreenState();
}

class _QuestionAndAnswerScreenState extends State<QuestionAndAnswerScreen> {
  int selectedAnswerIndex1 = -1;
  int selectedAnswerIndex2 = -1;
  int selectedAnswerIndex3 = -1;
  int selectedAnswerIndex4 = -1;
  int selectedAnswerIndex5 = -1;

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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionWithRadioButtons(
                        question: 'Positive Family Hx for Breast CA',
                        answers: const [
                          'Strongly Agree',
                          'Agree',
                          'Strongly Disagree',
                          'Disagree'
                        ],
                        selectedAnswerIndex: selectedAnswerIndex1,
                        onAnswerSelected: (index) {
                          setState(() {
                            selectedAnswerIndex1 = index;
                          });
                        },
                      ),
                      QuestionWithRadioButtons(
                         question: 'Have you ever undergone radiation therapyto the chest area?',
                        answers: const [
                          'Strongly Agree',
                          'Agree',
                          'Strongly Disagree',
                          'Disagree'
                        ],
                        selectedAnswerIndex: selectedAnswerIndex2,
                        onAnswerSelected: (index) {
                          setState(() {
                            selectedAnswerIndex2 = index;
                          });
                        },
                      ),
                      QuestionWithRadioButtons(
                         question: 'Have you ever had abnormal breast biopsies or other breast conditions?',
                        answers: const [
                          'Strongly Agree',
                          'Agree',
                          'Strongly Disagree',
                          'Disagree'
                        ],
                        selectedAnswerIndex: selectedAnswerIndex3,
                        onAnswerSelected: (index) {
                          setState(() {
                            selectedAnswerIndex3 = index;
                          });
                        },
                      ),
                      QuestionWithRadioButtons(
                        question: 'Do you have a family history of Breast Cancer in a first degree relative?',
                        answers: const [
                          'Strongly Agree',
                          'Agree',
                          'Strongly Disagree',
                          'Disagree'
                        ],
                        selectedAnswerIndex: selectedAnswerIndex4,
                        onAnswerSelected: (index) {
                          setState(() {
                            selectedAnswerIndex4 = index;
                          });
                        },
                      ),
                      QuestionWithRadioButtons(
                       question: 'Have you ever been diagnosed with breast cancer?',
                        answers: const [
                          'Strongly Agree',
                          'Agree',
                          'Strongly Disagree',
                          'Disagree'
                        ],
                        selectedAnswerIndex: selectedAnswerIndex5,
                        onAnswerSelected: (index) {
                          setState(() {
                            selectedAnswerIndex5 = index;
                          });
                        },
                      ),
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
                                  Navigator.of(context).pushNamed(SelectImageScreen.routeName);
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
