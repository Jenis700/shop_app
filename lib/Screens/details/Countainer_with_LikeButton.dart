import 'package:flutter/material.dart';

import 'Cart_Container.dart';
class ContainerWithLikeButton extends StatelessWidget {
  const ContainerWithLikeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCountainer(),
        Container(
          padding: EdgeInsets.all(6),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: ImageIcon(
            AssetImage("assets/heart icon.png"),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
