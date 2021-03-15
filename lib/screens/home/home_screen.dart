

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/constants.dart';
import 'package:flutter_ecommerce_ui/screens/home/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body : Body(),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: (){},),
      actions: [
        IconButton(icon: SvgPicture.asset("assets/icons/search.svg",
        color: kTextColor,),
          onPressed: (){},),
        IconButton(icon: SvgPicture.asset("assets/icons/cart.svg",
        color: kTextColor,),
          onPressed: (){},),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
