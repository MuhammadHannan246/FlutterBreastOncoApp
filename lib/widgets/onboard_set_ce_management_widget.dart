import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class OnBoardSetCEManagementWidget extends StatefulWidget {
  final String text1;
  final String text2;
  final int credit;

  const OnBoardSetCEManagementWidget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.credit,
  }) : super(key: key);

  @override
  OnBoardSetCEManagementWidgetState createState() => OnBoardSetCEManagementWidgetState();
}

class OnBoardSetCEManagementWidgetState extends State<OnBoardSetCEManagementWidget> {
  late int credit;

  @override
  void initState() {
    super.initState();
    credit = widget.credit;
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.text1,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    widget.text2,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kTextColor,
                        ),
                  ),
                ],
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
