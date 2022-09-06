import 'package:flutter/material.dart';
import 'package:islami/hadeth_tab2/Hadeth_details2.dart';
import 'package:islami/hadeth_tab2/hadeth_tab2.dart';

class ItemHadethName extends StatelessWidget {
  static String routeName='ItemHadethName';

Hadeth hadeth;
ItemHadethName(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Hadeth_details2.routeName,arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center),
      ),
    );
  }
}