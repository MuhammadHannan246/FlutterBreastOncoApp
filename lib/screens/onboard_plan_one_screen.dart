import 'package:breast_onco/widgets/circular_progress_indicator_rabbit_widget.dart';
import 'package:breast_onco/widgets/dash_pass_widget.dart';
import 'package:breast_onco/widgets/onboard_bookmark_widget.dart';
import 'package:flutter/material.dart';

class OnBoardPlanOneScreen extends StatefulWidget {
  const OnBoardPlanOneScreen({super.key});
  static const routeName = '/onboard-plan-one';

  @override
  State<OnBoardPlanOneScreen> createState() => _OnBoardPlanOneScreenState();
}

class _OnBoardPlanOneScreenState extends State<OnBoardPlanOneScreen> {
  List<bool> visibilityList = List.generate(4, (index) => false);
  bool isMonthlySelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
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
                    OnboardBookmarkWidget(text: 'Plan Selection'),
                  ],
                ),
                DashPassWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
