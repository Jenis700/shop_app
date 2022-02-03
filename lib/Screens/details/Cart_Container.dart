import 'package:flutter/material.dart';

import '../../constant.dart';


class CartCountainer extends StatefulWidget {
  const CartCountainer({Key? key}) : super(key: key);

  @override
  _CartCountainerState createState() => _CartCountainerState();
}

class _CartCountainerState extends State<CartCountainer> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
          icon: Icons.remove,
          press: () {
            if (numOfItem > 1) {
              setState(
                    () {
                  numOfItem--;
                },
              );
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItem++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
