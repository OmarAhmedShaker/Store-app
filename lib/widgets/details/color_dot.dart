import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: 7),
      padding: EdgeInsets.all(2),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          ),
          shape: BoxShape.circle),
      child: Container(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
