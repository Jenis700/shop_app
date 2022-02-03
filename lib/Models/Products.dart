import 'package:flutter/material.dart';

class Products {
  final String image, title, description;
  final int price, size, id;

  final Color color;

  Products({
    required this.id,
    required this.size,
    required this.image,
    required this.title,
    required this.color,
    required this.description,
    required this.price,
  });
}

List productList = [
  Products(
    id: 1,
    title: "Office Code",
    price: 550,
    description: dummyText,
    size: 12,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3DB2AE),
  ),
  Products(
    id: 2,
    title: "Belt Bag",
    price: 320,
    description: dummyText,
    size: 12,
    image: "assets/images/bag_2.png",
    color: Colors.orange,
  ),
  Products(
    id: 3,
    title: "Hang Top",
    price: 234,
    description: dummyText,
    size: 10,
    image: "assets/images/bag_3.png",
    color: Color(0xFF989493),
  ),
  Products(
    id: 4,
    title: "Old Fashion",
    price: 185,
    description: dummyText,
    size: 11,
    image: "assets/images/bag_4.png",
    color: Color(0xFFE6B398),
  ),
  Products(
    id: 5,
    title: "Office Code",
    price: 585,
    description: dummyText,
    size: 12,
    image: "assets/images/bag_5.png",
    color: Color(0xFFFB7883),
  ),
  Products(
    id: 6,
    title: "Office Code",
    price: 565,
    description: dummyText,
    size: 12,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simple dummy text of the printing and typesetting Industry.Ipsum is simple dummy text of the printing and typesetting Industry.Ipsum is simple dummy text of the printing and typesetting Industry";
