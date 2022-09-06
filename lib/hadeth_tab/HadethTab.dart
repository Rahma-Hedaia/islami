import 'package:flutter/material.dart';
import 'package:islami/hadeth_tab/Hadeth_name.dart';

class HadethTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Image.asset('assets/images/hadeeth_header_image.png'),
          ),
          Expanded(child: ListView.separated(
              itemBuilder: (_,index){return HadethName(index);},
              separatorBuilder: (context,index){return Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                height: 1,
                color: Theme.of(context).primaryColor,
              );},
              itemCount: 50)
          )
        ],
      ),
    );
  }
}
  