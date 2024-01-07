import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class QuestionWithRadioButtons extends StatelessWidget {
  final String question;
  final List<String> answers;
  final int selectedAnswerIndex;
  final void Function(int) onAnswerSelected;

  const QuestionWithRadioButtons({
    required this.question,
    required this.answers,
    required this.selectedAnswerIndex,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: kTextColor,
              ),
        ),
        SizedBox(height: 8),
        Column(
          children: List.generate(
            answers.length,
            (index) => RadioListTile<int>(
              title: Text(answers[index]),
              value: index,
              groupValue: selectedAnswerIndex,
              onChanged: (int? value) {
                onAnswerSelected(value ?? -1);
              },
              activeColor: kSecondarySwatchColor,
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
