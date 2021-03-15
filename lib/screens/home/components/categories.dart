import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {

  int selectIndex = 0 ;
  @override
  __CategoriesState createState() => __CategoriesState();
}

class __CategoriesState extends State<Categories> {
  int selectIndex = 0 ;
  List<String> categories = [ "Hand Bag","Jewelleary" ,"footwear","dresses"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(kDefaultPaddin) ,
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: selectIndex,
            itemBuilder: (context,index)=> buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectIndex=index;
        });
      },
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(categories[index],
              style: TextStyle(fontWeight: FontWeight.bold,
                  color: index==selectIndex?kTextColor:kTextLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin/4),
              height: 2,
              width: 30,
              color:index==selectIndex?Colors.black:Colors.transparent,
            )

          ], ),
      ),
    );
  }
}
