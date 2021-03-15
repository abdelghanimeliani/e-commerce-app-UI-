import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/models/product.dart';

import '../../../constants.dart';

class ColorDot extends StatelessWidget {
  final Color color ;
  final  bool insSelected ;
  const ColorDot({
    Key key, this.color, this.insSelected=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: kDefaultPaddin/4,
          right: kDefaultPaddin/2
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: insSelected ?color:Colors.transparent
          )
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color:color,
          shape: BoxShape.circle,
        ),

      ),
    );
  }
}

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("colors"),
              Row(
                children: [
                  ColorDot(color: Colors.amberAccent,),
                  ColorDot(color: product.color,insSelected: true,),
                  ColorDot(color: Colors.deepOrangeAccent,)
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(text: TextSpan(
              style: TextStyle(color:kTextColor ),
              children: [
                TextSpan(text:"size"
                ),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context).textTheme.headline5
                )
              ]
          )
          ),
        )
      ],
    );
  }
}