import 'package:flutter/material.dart';

class ItemHadeth extends StatelessWidget {
  static String routeName='ItemHadeth';
  String text;
  ItemHadeth(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(text,style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center),
    );
  }
}

