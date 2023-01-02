import 'package:flutter/material.dart';

import '../app_data.dart';
import '../constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.appDataIndex,
    required this.press,
  }) : super(key: key);
  final int appDataIndex;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefualtPadding),
              decoration: BoxDecoration(
                  color: appData[appDataIndex]['color'],
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(appData[appDataIndex]['image']),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 2),
            child: Text(
              appData[appDataIndex]['title'],
              style: TextStyle(color: kSecendTextColor),
            ),
          ),
          Text(
            '\$ ${appData[appDataIndex]['price']}',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
