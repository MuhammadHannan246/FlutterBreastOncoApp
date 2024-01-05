import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/screens/onboard_promo_one_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class DashPassWidget extends StatefulWidget {
  const DashPassWidget({
    super.key,
  });

  @override
  State<DashPassWidget> createState() => _DashPassWidgetState();
}

class _DashPassWidgetState extends State<DashPassWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late double xAlign;
  late Color selectedColor;
  late Color unselectedColor;
  bool descriptionShow = false;

  List<String> monthlyList = [
    'One dash pass per month',
    '5-minute mini-modules',
    'Goal Manager',
    'Auto reminders',
    'Email badges',
    'Promo posts',
    'Mobile and desktop app',
    'Buy extra classes',
    'Class passes roll over',
  ];

  List<String> yearlyList = [
    'Eight dash passes',
    'Easy 5-minute mini-modules',
    'Goal Manager & auto reminders',
    'Email badges & promo posts',
    'Access via mobile or desktop app',
    'Buy extra classes if needed',
    'Class passes roll over (up to 8)',
  ];

  @override
  void initState() {
    xAlign = -1;
    selectedColor = kLightColor;
    unselectedColor = kSecondarySwatchColor.shade700;

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Container(
            width: size(context).width * 0.8,
            height: 50.0,
            decoration: BoxDecoration(
              color: kTransparentColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Stack(
              children: [
                AnimatedAlign(
                  alignment: Alignment(xAlign, 0),
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    width: size(context).width * 0.4,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: kSecondarySwatchColor.shade700,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      xAlign = -1;
                      selectedColor = kLightColor;
                      descriptionShow = false;
                      unselectedColor = kSecondarySwatchColor.shade700;
                    });
                  },
                  child: Align(
                    alignment: const Alignment(-1, 0),
                    child: Container(
                      width: size(context).width * 0.4,
                      color: kTransparentColor,
                      alignment: Alignment.center,
                      child: Text(
                        'Monthly',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: selectedColor),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      xAlign = 1;
                      unselectedColor = kLightColor;
                      descriptionShow = true;
                      selectedColor = kSecondarySwatchColor.shade700;
                    });
                  },
                  child: Align(
                    alignment: const Alignment(1, 0),
                    child: Container(
                      width: size(context).width * 0.4,
                      color: kTransparentColor,
                      alignment: Alignment.center,
                      child: Text(
                        'Annualy',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: unselectedColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: !descriptionShow,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: kSecondarySwatchColor.shade700, width: 1.0),
              ),
              color: kSecondarySwatchColor.shade50,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Dash Pass',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: kSecondarySwatchColor.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                    ),
                    trailing: Text(
                      '\$13 / mo.',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: kPrimarySwatchColor.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Divider(color: kTextColor, height: 1),
                  ...monthlyList.map((monthlyItem) {
                    return ExpansionTile(
                      title: Text(
                        monthlyItem,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      collapsedIconColor: kTextColor,
                      iconColor: kTextColor,
                      textColor: kTextColor,
                      children: [
                        ListTile(
                          title: Text(
                            'Dash CE 1',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Dash CE 2',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                    child: SizedBox(
                      width: size(context).width,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(OnboardPromoOneScreen.routeName);
                        },
                        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(backgroundColor: MaterialStatePropertyAll(kSecondarySwatchColor.shade700)),
                        child: Text(
                          'Sign-Up',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kLightColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: descriptionShow,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: kSecondarySwatchColor.shade700, width: 1.0),
              ),
              color: kSecondarySwatchColor.shade50,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Dash Pass',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: kSecondarySwatchColor.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                    ),
                    trailing: Text(
                      '\$75 / mo.',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: kPrimarySwatchColor.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Divider(color: kTextColor, height: 1),
                  ...yearlyList.map((yearlyItem) {
                    return ExpansionTile(
                      title: Text(
                        yearlyItem,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      collapsedIconColor: kTextColor,
                      iconColor: kTextColor,
                      textColor: kTextColor,
                      children: [
                        ListTile(
                          title: Text(
                            'Dash CE 1',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Dash CE 2',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                    child: SizedBox(
                      width: size(context).width,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(OnboardPromoOneScreen.routeName);
                        },
                        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(backgroundColor: MaterialStatePropertyAll(kSecondarySwatchColor.shade700)),
                        child: Text(
                          'Sign-Up',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kLightColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
