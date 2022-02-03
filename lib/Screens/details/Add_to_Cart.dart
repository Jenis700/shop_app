import 'package:flutter/material.dart';
import 'package:shop_app/Models/Products.dart';

import '../../constant.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: products.color,
              ),
            ),
            child: IconButton(
              icon: ImageIcon(
                  AssetImage("assets/cartIcon.png")),
              onPressed: () {},
              color: products.color,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                      products.color),
                ),
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
