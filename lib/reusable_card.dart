import 'package:flutter/material.dart';

//Refactor Card Widget
class ReusableCard extends StatelessWidget {
  //creating immutable variable (kolor) by using final
  final Color kolor;
  final Widget cardChild;

  //First-Class Objects : use as variables or as arguments (higher-order function)
  final Function onPress;

  //creating constructor with @required for kolor, not childCard
  ReusableCard({@required this.kolor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: kolor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
