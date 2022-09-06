import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_tab2/ItemhadethName.dart';

class Hadeth_Tab2 extends StatefulWidget {
  @override
  State<Hadeth_Tab2> createState() => _Hadeth_Tab2State();
}

class _Hadeth_Tab2State extends State<Hadeth_Tab2> {
  List<Hadeth> all_hadeth = [];

  @override
  Widget build(BuildContext context) {
    if (all_hadeth.isEmpty) loadfile();
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadeeth_header_image.png'),
          Divider(
              color: Theme.of(context).primaryColor, thickness: 3, height: 1),
          Text(
            'أحاديث',
            style: Theme.of(context).textTheme.headline1,
          ),
          Divider(
              color: Theme.of(context).primaryColor, thickness: 3, height: 1),
          all_hadeth.length == 0
              ? Center(child: CircularProgressIndicator())
              : Expanded(
                  child: ListView.builder(
                  itemCount: all_hadeth.length,
                  itemBuilder: (_, index) {
                    return ItemHadethName(all_hadeth[index]);
                  },
                  // separatorBuilder: (context, index) {
                  //   return Divider(
                  //       color: Theme.of(context).primaryColor,
                  //       thickness: 2,
                  //       height: 1);
                  // },
                ))
        ],
      ),
    );
  }

  void loadfile() async {
    String file_content =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> content = file_content.trim().split('#\r\n');
    for (int i = 0; i < content.length; i++) {
      List<String> lines = content[i].split('\n');
      String title = lines[0];
      lines.removeAt(0);
      all_hadeth.add(Hadeth(title, lines));
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> contenet;
  Hadeth(this.title, this.contenet);
}
