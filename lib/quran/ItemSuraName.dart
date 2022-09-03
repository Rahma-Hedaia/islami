import 'package:flutter/material.dart';
import 'package:islami/sura_details/SuraDetails.dart';

class ItemSuraName extends StatelessWidget {
  static String routeName='ItemSuraName';
String name;
int index;
ItemSuraName(this.name,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetails.routeName,arguments: SuraDetailsArgs(name: this.name, index: this.index));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(name,style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center),
      ),
    );
  }
}

