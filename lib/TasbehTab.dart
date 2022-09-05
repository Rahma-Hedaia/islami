import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter=0;
  int index=0;
  String tasbeh='';
  List<String> sebha =['سبحان الله','الحمد لله','الله اكبر','لا إله إلا الله','لا حول ولا قوة إلا بالله'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: (){
              onSebhaClick();
              // setState(() {
              //   counter++;
              // });
              // if(counter==34){
              //   counter=0;
              //   if(index<(sebha.length-1)){
              //     index++;
              //   }else{
              //     index=0;
              //   }
              //   setState(() {
              //   });
              // }
            },
            child: Container(margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .03),
                child: Center(child: Image.asset('assets/images/sebha_header_image.png'))),
          ),
          Text('عدد التسبيحات',style: Theme.of(context).textTheme.subtitle1,),
          Container(
            width: 65,
            height: 71,
            decoration: BoxDecoration(
                color: Color(0xFFD2AD7E),
                borderRadius: BorderRadius.circular(15)
              // border: Border.all(width: 10,color: Colors.red[300],),
            ),
            child: Center(child: Text('${counter}',style: Theme.of(context).textTheme.subtitle1,)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.symmetric(horizontal: 50),
            // width: 145,
            height: 51,
            decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Center(child: Text('${sebha[index]}',style: TextStyle(
                color: Color(0xFFF8F8F8),
                fontWeight: FontWeight.w700,fontSize: 20
            ),)),
          ),
        ],
      ),
    );
  }
  void onSebhaClick(){
    counter++;
    if(counter%33 ==0){
      index++;
    }
    if(counter %165 ==0){
      index=0;
    }
    setState(() {

    });
  }
}
