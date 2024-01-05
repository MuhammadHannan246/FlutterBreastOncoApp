import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccordionWidget extends StatefulWidget {
  final String title;
  final String image;

  const AccordionWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  AccordionWidgetState createState() => AccordionWidgetState();
}

class AccordionWidgetState extends State<AccordionWidget> {
  bool isAccordionExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kTextColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListTile(
          title: Row(
            children: [
              SvgPicture.asset(
                widget.image,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16.0),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          trailing: Radio(
            fillColor: Theme.of(context).radioTheme.fillColor,
            groupValue: true,
            value: isAccordionExpanded,
            onChanged: (bool? value) {
              setState(() {
                isAccordionExpanded = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
