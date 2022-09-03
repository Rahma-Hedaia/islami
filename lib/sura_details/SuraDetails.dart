import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_details/ItemVerse.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) loadfile(args.index);
    return Stack(
      children: [
        Image.asset('assets/images/background.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                '${args.name}',
                style: Theme.of(context).textTheme.headline1,
              ),
              centerTitle: true,
            ),
            body: verses.length == 0
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        height: 1,
                        color: Theme.of(context).primaryColor,
                      );
                    },
                    itemCount: verses.length,
                    itemBuilder: (_, index) {
                      return ItemVerse(verses[index]);
                    },
                  )),
      ],
    );
  }

  void loadfile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    setState(() {
      verses = lines;
    });
  }
}

class SuraDetailsArgs {
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
