import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/models/product.dart';
import 'package:flutter_ecommerce_ui/screens/details/component/product_title_with_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'descreption.dart';
import 'favorite_button.dart';

class Body extends StatelessWidget {
  final Product product ;

  const Body({Key key, this.product}) : super(key: key);

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
                Container
                  (
                  margin: EdgeInsets.only(top: size.height*0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
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
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin/2,),
                      Descreption(product: product),
                      SizedBox(height: kDefaultPaddin/2,),
                      FavButton(),
                      SizedBox(height: kDefaultPaddin/2,),
                      AddToCart(product: product,),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}








