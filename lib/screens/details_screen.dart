import 'package:flutter/material.dart';
import 'package:secend_app_store/app_data.dart';

import '../widgets/details/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.itemIndex}) : super(key: key);

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appData[itemIndex]['color'],
      appBar: appBar(),
      body: DetailsBody(
        itemIndex: itemIndex,
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: appData[itemIndex]['color'],
        actions: [
          IconButton(
              padding: EdgeInsets.only(left: 20),
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
        ]);
  }
}
