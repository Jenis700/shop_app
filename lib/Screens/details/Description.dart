import 'package:flutter/material.dart';
import 'package:shop_app/Models/Products.dart';

import '../../constant.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        products.description,
        style: TextStyle(height: 1.5, fontStyle: FontStyle.italic),
      ),
    );
  }
}
