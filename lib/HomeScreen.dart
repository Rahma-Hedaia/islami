import 'package:flutter/material.dart';
import 'package:islami/hadeth_tab/HadethTab.dart';
import 'package:islami/hadeth_tab2/hadeth_tab2.dart';
import 'package:islami/quran/QuranTab.dart';
import 'package:islami/RadioTab.dart';
import 'package:islami/TasbehTab.dart';

class HomeScreen extends StatefulWidget{
static String routeName ='Home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background.png',width: double.infinity,height: double.infinity,fit: BoxFit.fill),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('اسلامى',style: Theme.of(context).textTheme.headline1,),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (index){
                currentIndex=index;
                setState(() {
                });
              },
              backgroundColor: Theme.of(context).primaryColor,
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'الاذاعة'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                    label: 'سبحه'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                    label: 'حديث'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_moshaf.png')),
                    label: 'قرآن'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                    label: 'حديث'),
              ],
            ),
          ),
          body: tabs[currentIndex],
        )
      ],
    );
  }
  List<Widget> tabs=[
    RadioTab(),TasbehTab(),HadethTab(),QuranTab(),Hadeth_Tab2()
  ];
}
