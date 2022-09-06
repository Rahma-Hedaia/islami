import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_details/Hadeth_name.dart';
import 'package:islami/hadeth_details/ItemHadeth.dart';

class HadethDetails extends StatefulWidget {
  static String routename = 'HadethDetails';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  List<String> hadeeth = [];

  @override
  Widget build(BuildContext context) {
    HadethDetailsArgs args =
    ModalRoute.of(context)?.settings.arguments as HadethDetailsArgs;
    if (hadeeth.isEmpty) loadfile(args.index);
    return Stack(
      children: [
        Image.asset('assets/images/background.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              // title: Text(
              //   //${hadeeth[0]}
              //   'hadeeth',
              //   style: Theme.of(context).textTheme.headline1,
              // ),
              // centerTitle: true,
            ),
            body:  hadeeth.length == 0
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
              separatorBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  height: 1,
                  color: Theme.of(context).primaryColor,
                );
              },
              itemCount: hadeeth.length,
              itemBuilder: (_, index) {
                return ItemHadeth(hadeeth[index]);
              },
            )
        ),
      ],
    );
  }

  void loadfile(int index) async {
    String content =
    await rootBundle.loadString('assets/files/h${index + 1}.txt');
    List<String> lines = content.split('\n');
    setState(() {
      hadeeth = lines;
    });
  }
}

/*import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_details/Hadeth_name.dart';

class HadethDetails extends StatefulWidget {
  static String routename = 'HadethDetails';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  List<String> hadeeth = [];

  @override
  Widget build(BuildContext context) {
    HadethDetailsArgs args =
    ModalRoute.of(context)?.settings.arguments as HadethDetailsArgs;
    if (hadeeth.isEmpty) loadfile(args.index);
    return Stack(
      children: [
        Image.asset('assets/images/background.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                'اسلامى',
                style: Theme.of(context).textTheme.headline1,
              ),
              centerTitle: true,
            ),
            body:  Container(

            )
          // ListView.separated(
          //   separatorBuilder: (context, index) {
          //     return Container(
          //       margin: EdgeInsets.symmetric(horizontal: 50),
          //       height: 1,
          //       color: Theme.of(context).primaryColor,
          //     );
          //   },
          //   itemCount: 50,
          //   itemBuilder: (_, index) {
          //     return '123456';
          //   },
          // )
        ),
      ],
    );
  }

  void loadfile(int index) async {
    String content =
    await rootBundle.loadString('assets/files/h${index + 1}.txt');
    List<String> lines = content.split('\n');
    setState(() {
      hadeeth = lines;
    });
  }
}


 */
/*
import 'package:flutter/material.dart';
import 'package:islami/hadeth_tab/HadethDetails.dart';
import 'package:islami/sura_details/SuraDetails.dart';

class ItemHadethName extends StatelessWidget {
  static String routeName='ItemHadethName';
int index;
ItemHadethName(this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routename,arguments: HadethDetailsArgs(index: this.index));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(' حديث${index+1}',style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center),
      ),
    );
  }
}


class HadethDetailsArgs {
  int index;
  HadethDetailsArgs({required this.index});
}

 */