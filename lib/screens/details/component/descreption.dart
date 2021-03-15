import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce_ui/models/product.dart';

import '../../../constants.dart';

class Descreption extends StatelessWidget {
  const Descreption({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:kDefaultPaddin ),
      child: Text(
        product.description,
        style: TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}