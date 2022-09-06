import 'package:flutter/material.dart';
import 'package:islami/hadeth_tab2/hadeth_tab2.dart';

class Hadeth_details2 extends StatelessWidget {
static String routeName='Hadeth_details2';
  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Stack(
      children: [
        Image.asset('assets/images/background.png',width: double.infinity,height: double.infinity,fit: BoxFit.fill),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text('إسلامى',style: Theme.of(context).textTheme.headline1),
          ),
          body: Column(
            children: [
              Text(hadeth.title,style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                height: 2,
                color: Theme.of(context).primaryColor,
              ),
              Expanded(child: SingleChildScrollView(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(hadeth.contenet.toString(),style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center,),
              )))
            ],
          ),

        )
      ],
    );
  }
}
