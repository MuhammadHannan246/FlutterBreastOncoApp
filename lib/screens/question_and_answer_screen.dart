import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class QuestionAndAnswerScreen extends StatefulWidget {
  const QuestionAndAnswerScreen({super.key});
  static const routeName = '/question-and-answer';

  @override
  State<QuestionAndAnswerScreen> createState() =>
      _QuestionAndAnswerScreenState();
}

class _QuestionAndAnswerScreenState extends State<QuestionAndAnswerScreen> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Patients Details',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: kSecondarySwatchColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),

                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),

                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),

                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),


                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),

                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),

                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),

                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
                  Text(
                'Asking patient\'s symptoms and other questions to predict with questionier model',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextColor,
                    ),
              ),
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  activeColor: kSecondarySwatchColor, 
                ),
              ),

              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: Theme.of(context)
                          .outlinedButtonTheme
                          .style!
                          .copyWith(
                            side: MaterialStateProperty.all(
                              BorderSide(color: kSecondarySwatchColor),
                            ),
                          ),
                      child: Text(
                        'Back',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
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
                        // Handle the "Next" button press
                      },
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                            backgroundColor:
                                MaterialStateProperty.all(kSecondarySwatchColor),
                          ),
                      child: Text(
                        'Next',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                              color: kLightColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
