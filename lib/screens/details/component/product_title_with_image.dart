import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/models/product.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Aristocratic hand bag",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          Text(product.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
              color: Colors.white,
              fontWeight:FontWeight.bold,),
          ),

          SizedBox(width: kDefaultPaddin,),

          Row(
            children: [
              RichText(text:TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ]
              )
              ),
              SizedBox(width: kDefaultPaddin,),

              Expanded(child: Image.asset(
                product.image,
                fit: BoxFit.fill,)
              )
            ],
          )
        ],
      ),
    );
  }
}
