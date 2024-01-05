import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class SetGoalTimeWidget extends StatefulWidget {
  final String bold;
  final String text;
  final int time;

  const SetGoalTimeWidget({
    Key? key,
    required this.bold,
    required this.text,
    required this.time,
  }) : super(key: key);

  @override
  SetGoalTimeWidgetState createState() => SetGoalTimeWidgetState();
}

class SetGoalTimeWidgetState extends State<SetGoalTimeWidget> {
  late int credit;

  @override
  void initState() {
    super.initState();
    credit = widget.time;
  }

  void increaseCredit() {
    setState(() {
      credit++;
    });
  }

  void decreaseCredit() {
    setState(() {
      if (credit > 0) {
        credit--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                  children: [
                    TextSpan(
                      text: widget.bold,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kSecondarySwatchColor.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: ' ${widget.text}',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kTextColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: decreaseCredit,
                  icon: const Icon(Icons.remove),
                  style: credit == 0
                      ? Theme.of(context).iconButtonTheme.style!.copyWith(
                            backgroundColor: MaterialStatePropertyAll(kPrimarySwatchColor.withOpacity(0.5)),
                            iconColor: MaterialStatePropertyAll(kLightColor),
                          )
                      : Theme.of(context).iconButtonTheme.style!.copyWith(
                            backgroundColor: MaterialStatePropertyAll(kPrimarySwatchColor),
                            iconColor: MaterialStatePropertyAll(kLightColor),
                          ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 20,
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        credit.toString(),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: increaseCredit,
                  icon: const Icon(Icons.add),
                  style: Theme.of(context).iconButtonTheme.style!.copyWith(
                        backgroundColor: MaterialStatePropertyAll(kPrimarySwatchColor),
                        iconColor: MaterialStatePropertyAll(kLightColor),
                      ),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
