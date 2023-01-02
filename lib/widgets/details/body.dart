import 'package:flutter/material.dart';
import 'package:secend_app_store/constants.dart';

import '../../app_data.dart';
import 'buttons.dart';
import 'color_dot.dart';
import 'color_size.dart';
import 'contener_buttom.dart';
import 'contener_favortie.dart';
import 'tit_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.itemIndex}) : super(key: key);

  final int itemIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                padding: EdgeInsets.only(
                    top: size.height * 0.13,
                    right: kDefualtPadding,
                    left: kDefualtPadding),
                margin: EdgeInsets.only(top: size.height * 0.3),
                height: 500,
                decoration: BoxDecoration(
                  color: kBgColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    ColorAndSize(itemIndex: itemIndex),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      appData[itemIndex]['details'],
                      style: TextStyle(height: 1.5),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    ContenerAndFav(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    ShopAndBuyButton(
                      idexListData: itemIndex,
                    ),
                  ],
                ),
              ),
              TitWithPriceAndImage(itemIndex: itemIndex)
            ]),
          )
        ],
      ),
    );
  }
}
