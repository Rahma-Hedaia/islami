import 'package:flutter/material.dart';

class ItemVerse extends StatelessWidget {
  static String routeName='Itemverse';
String text;
ItemVerse(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(text,style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center),
    );
  }
}

