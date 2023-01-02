import 'package:flutter/material.dart';
import 'package:secend_app_store/app_data.dart';
import 'package:secend_app_store/constants.dart';
import 'package:secend_app_store/screens/details_screen.dart';

import '../widgets/categories.dart';
import '../widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefualtPadding),
            child: Text(
              'Women',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefualtPadding),
              child: GridView.builder(
                  itemCount: appData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: kDefualtPadding - 5,
                      crossAxisSpacing: kDefualtPadding - 5),
                  itemBuilder: (context, index) => ItemCard(
                      appDataIndex: index,
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    itemIndex: index,
                                  ))))),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(backgroundColor: kBgColor, elevation: 0, actions: [
      IconButton(
          padding: EdgeInsets.only(left: 20),
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.black38,
          )),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black38,
          )),
    ]);
  }
}
