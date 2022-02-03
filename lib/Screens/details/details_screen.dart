import 'package:flutter/material.dart';
import 'package:shop_app/Models/Products.dart';
import '../../constant.dart';
import 'body.dart';

class DetailsScreen extends StatelessWidget {
  final Products products;

  const DetailsScreen({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products.color,
      appBar: buildAppBar(context),
      body: Body(products: products,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: products.color,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          "assets/back arrow icon.png",
          color: Colors.white,
          height: 17,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/search-icon image.png",
            height: 29,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
          color: Colors.white,
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
