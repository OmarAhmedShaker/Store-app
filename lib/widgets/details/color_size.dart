import 'package:flutter/material.dart';

import '../../app_data.dart';
import '../../constants.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.itemIndex,
  }) : super(key: key);

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Color',
                style: TextStyle(color: kSecendTextColor),
              ),
              Row(
                children: [
                  ColorDot(color: Colors.blue, isSelected: true),
                  ColorDot(color: Colors.red, isSelected: false),
                  ColorDot(color: Colors.grey, isSelected: false)
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'size',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '${appData[itemIndex]['size']} cm',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
        )
      ],
    );
  }
}
