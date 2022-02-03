import 'package:flutter/material.dart';
import 'package:shop_app/Models/Products.dart';
import 'package:shop_app/Screens/details/Description.dart';
import 'package:shop_app/constant.dart';
import 'Add_to_Cart.dart';
import 'Countainer_with_LikeButton.dart';
import 'Product_title_With_Image.dart';
import 'color_and_size_details.dart';

class Body extends StatelessWidget {
  final Products products;

  const Body({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorANdSizedetails(products: products),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(products: products),
                      SizedBox(height: kDefaultPadding / 2),
                      ContainerWithLikeButton(),SizedBox(height: kDefaultPadding / 2),
                      AddToCart(products: products),
                    ],
                  ),
                ),
                ProductTitleWithImage(products: products),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
