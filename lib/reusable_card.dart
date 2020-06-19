import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  //we need to make the color required we can't have a null color for our card
  ReusableCard({@required this.colour, this.childCard});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      //color: Color(0xff1D1E33),
      //TO ADD border radius we use box decoration
      //but when we use it we have to move the color inside it because
      //the color is just a shortcut the real thing that is the container uses box decoration behind the scenes
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
