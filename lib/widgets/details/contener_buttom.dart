import 'package:flutter/material.dart';

class ContenerBottom extends StatelessWidget {
  const ContenerBottom({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final Icon icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: icon,
      ),
    );
  }
}
