import 'package:flutter/material.dart';
import 'package:shop_app/Screens/body.dart';
import 'package:shop_app/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: kTextColor,
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/search-icon image.png",height: 29,
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
          color: kTextColor,
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
