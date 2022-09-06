import 'package:flutter/material.dart';
import 'package:islami/hadeth_tab/Hadeth_details.dart';

class HadethName extends StatelessWidget {
  static String routeName='ItemHadethName';
  int index;
  HadethName(this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routename,arguments: HadethDetailsArgs(index: this.index));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text('حديث ${index+1}',style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center),
      ),
    );
  }
}


class HadethDetailsArgs {
  int index;

  HadethDetailsArgs({required this.index});
}
