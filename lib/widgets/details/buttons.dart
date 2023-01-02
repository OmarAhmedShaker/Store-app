import 'package:flutter/material.dart';
import 'package:secend_app_store/app_data.dart';

class ShopAndBuyButton extends StatelessWidget {
  const ShopAndBuyButton({
    Key? key,
    required this.idexListData,
  }) : super(key: key);

  final int idexListData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          width: 58,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: appData[idexListData]['color'])),
          child: TextButton(
            onPressed: () {},
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: appData[idexListData]['color'],
            ),
          ),
        ),
        Expanded(
            child: SizedBox(
          height: 50,
          child: Container(
            decoration: BoxDecoration(
                color: appData[idexListData]['color'],
                borderRadius: BorderRadius.circular(13)),
            child: TextButton(
              onPressed: () {},
              child: Center(
                  child: Text(
                'BUY NOW',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ))
      ],
    );
  }
}
