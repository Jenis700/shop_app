import 'package:flutter/material.dart';
import 'package:shop_app/Models/Products.dart';

import '../constant.dart';

class ItemCard extends StatelessWidget {
  final Products products;
  final VoidCallback press;

  const ItemCard({
    Key? key,
    required this.products,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              //for demo we used fix height and width now we use spaciang in drid view
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: products.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(tag: "${products.id}",
                child: Image.asset(products.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              products.title,
              style: TextStyle(color: kTextColor),
            ),
          ),
          Text(
            "\$${products.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
