import 'package:flutter/material.dart';

import '../../app_data.dart';
import '../../constants.dart';

class TitWithPriceAndImage extends StatelessWidget {
  const TitWithPriceAndImage({
    Key? key,
    required this.itemIndex,
  }) : super(key: key);

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefualtPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            appData[itemIndex]['type'],
            style: TextStyle(color: kBgColor),
          ),
          Text(
            appData[itemIndex]['title'],
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: kBgColor),
          ),
          SizedBox(
            height: kDefualtPadding,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: 'price\n'),
                TextSpan(
                    text: '\$${appData[itemIndex]['price']}',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
              ])),
              SizedBox(
                width: kDefualtPadding,
              ),
              Expanded(child: Image.asset(appData[itemIndex]['image']))
            ],
          )
        ],
      ),
    );
  }
}
