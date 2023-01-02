import 'package:flutter/material.dart';

import 'contener_buttom.dart';

class ContenerAndFav extends StatefulWidget {
  const ContenerAndFav({
    Key? key,
  }) : super(key: key);

  @override
  State<ContenerAndFav> createState() => _ContenerAndFavState();
}

class _ContenerAndFavState extends State<ContenerAndFav> {
  int itemIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContenerBottom(
          icon: Icon(Icons.remove),
          press: () {
            setState(() {
              if (itemIndex > 1) {
                itemIndex--;
              }
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            itemIndex.toString().padLeft(2, '0'),
            style: TextStyle(fontSize: 20),
          ),
        ),
        ContenerBottom(
            icon: Icon(Icons.add),
            press: () {
              setState(() {
                itemIndex++;
              });
            }),
        Spacer(),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: Icon(
            Icons.favorite,
            color: Colors.white,
            size: 20,
          ),
        )
      ],
    );
  }
}
