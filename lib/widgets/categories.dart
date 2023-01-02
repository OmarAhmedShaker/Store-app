import 'package:flutter/material.dart';

import '../constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'HandBag',
    'FootWear',
    'Gold',
    'HeadWear',
    'HandBag',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefualtPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          itemBuilder: ((context, index) => buildCategory(index)),
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefualtPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    color: selectedIndex == index
                        ? kBodyTextColor
                        : kSecendTextColor),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                width: 30,
                height: 2,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
