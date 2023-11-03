import 'package:e_commerce_app/shared/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({super.key, required this.price, required this.category, required this.id, required this.name});
  final String  price;
  final String category;
  final String id;
  final String name;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 0.6,
                  offset: Offset(1, 1))
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.23,
                      decoration:
                      BoxDecoration(image: DecorationImage(image: NetworkImage("widget.image"))),
                    ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: null,
                          child: Icon(MaterialCommunityIcons.heart_outline),
                        ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: appstyleWithhit(
                            36, Colors.black, FontWeight.bold, 1.1),
                      ),
                      Text(
                        widget.category,
                        style: appstyleWithhit(
                            36, Colors.black, FontWeight.bold, 1.1),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
