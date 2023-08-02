import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:delayed_display/delayed_display.dart';
void main() {
  runApp(const MyApp());
}

class Menu_item{
  String A_name;
  String E_Name;
  String Price;
  String C_N;
  Menu_item(this.A_name,this.E_Name,this.Price,this.C_N);
}
class CA{
  String A_name;

  Color c1;
  Color c2;
  CA(this.A_name,this.c1,this.c2);
}
class item{
  String A_name;
  String Price;
  String Image;


  item(this.A_name,this.Price,this.Image);
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Menu',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
        ),
        debugShowCheckedModeBanner: false,

        home:MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Menu_item> Items=[
    Menu_item("ترافل فنكرز", "Truffle fries", "7500", "0"),
    Menu_item('لافا فنكرز', "Lava fries", "8500", "0"),
    Menu_item( 'اصابع الموزاريلا ', "Mozzarella sticks", "5500", "0"),
    Menu_item( 'اصابع الدجاج المقرمشة', "Chicken strips", "7500", "0"),
    Menu_item('سلطة ملفوف ', "Coleslaw", "2500", "0"),

    Menu_item('سلطة ملفوف ', "علبة فنكرز", "3000", "1"),
    Menu_item('كرنكلز', "Crinkles", "4000", "1"),
    Menu_item('بطاطا ويدجز', "Potato wedges", "3500", "1"),

    Menu_item('جوانح البافالو', "Buffallo wings", "5000", "2"),
    Menu_item('جوانح الباربكيو', "BBQ wings", "5000", "2"),
    Menu_item('جوانح الهوني ماسترد', "Honey mustard wings", "5000", "2"),

    Menu_item('بركر كلاسيك', "Classic signature burger", "8000", "3"),
    Menu_item('برگر الفطر الكريمية', "Creamy mushroom burger", "8500", "3"),
    Menu_item('فلايمز بركر', "Flames burger", "8000", "3"),
    Menu_item('بركر لبناني', "Lebanese burger", "7500", "3"),
    Menu_item('بركر ترافل سباركس', "Truffle sparks burger", "11000", "3"),
    Menu_item('بركر اللحم المقدد', "Bacon chops burger", "8500", "3"),

    Menu_item('سوبر ستار زنجر', "Super star zinger", "7000", "4"),
    Menu_item('بافالو تشكن بركر', "Buffalo chicken burger", "7000", "4"),
    Menu_item('باربكيو تشكن بركر', "BBQ chicken burger", "6500", "4"),
    Menu_item('بركر دجاج كلاسيك', "Classic chicken burger", "6000", "4"),

    Menu_item('هوت دوغ كلاسيك', "Classic hotdog", "4500", "5"),

    Menu_item('وجبة بركر كلاسيك', "Classic signature meal", "10000", "6"),
    Menu_item('وجبة برگر الفطر الكريمية', "Creamy mushroom meal", "10500", "6"),
    Menu_item('وجبة فلايمز بركر', "Flames burger meal", "10000", "6"),
    Menu_item('وجبة بركر لبناني', "Lebanese burger meal", "9500", "6"),
    Menu_item('وجبة بركر ترافل سباركس', "Truffle sparks burger meal", "13000", "6"),
    Menu_item('وجبة بركر اللحم المقدد', "Bacon chops burger meal", "10500", "6"),
    Menu_item('وجبة سوبر ستار زنجر', "Super star zinger meal", "9000", "6"),
    Menu_item('وجبة بافالو تشكن بركر', "Buffalo chicken burger meal", "9000", "6"),
    Menu_item('وجبة باربكيو تشكن بركر', "BBQ chicken burger meal", "8500", "6"),
    Menu_item('وجبة بركر دجاج كلاسيك', "Classic chicken burger meal", "8000", "6"),

    Menu_item('مشروبات غازية', "Soft drinks", "1000", "7"),
    Menu_item('مياه', "Water", "500", "7"),





  ];
  String indexs="0";
  List<CA> ca=[
    CA('المقبلات', Colors.white, Colors.red),
    CA('البطاطا المقلية',Colors.red, Colors.white),
    CA('الجوانح', Colors.red, Colors.white),
    CA( 'بركر اللحم', Colors.red, Colors.white),
    CA( 'بركر الدجاج', Colors.red, Colors.white),

    CA('هوت دوغ',Colors.red, Colors.white),
    CA('اجعلها وجبة',Colors.red, Colors.white),
    CA('المشروبات',Colors.red, Colors.white),

  ];
  @override
  List<item> ne=[

  ];

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      for(int i=0;i<Items.length;i++){
        if(Items[i].C_N=="0"){
          ne.add(item(Items[i].A_name,Items[i].Price,"images/${0}.jpg"));
        }
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          actions: [
            IconButton(onPressed: () async {
              await launchUrl(Uri.parse("https://www.instagram.com/flames.iraq/?igshid=NTc4MTIwNjQ2YQ%3D%3D"));
            }, icon: FaIcon(FontAwesomeIcons.instagram,color: Colors.red,)),

          ],

        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset("images//logo.jpg")),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,

                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ca[index].c1,
                              ),
                              onPressed: (){
                                if(ca[index].A_name=='المقبلات'){
                                  ne=[];
                                  setState(() {
                                    for(int i=0;i<ca.length;i++){
                                      if(i!=0){
                                        setState(() {
                                          ca[i].c1=Colors.red;
                                          ca[i].c2=Colors.white;
                                        });

                                      }
                                      else{
                                        setState(() {
                                          ca[i].c1=Colors.white;
                                          ca[i].c2=Colors.red;
                                        });

                                      }
                                    }
                                    indexs="0";
                                    for(int i=0;i<Items.length;i++) {
                                      if (Items[i].C_N == "0") {
                                        ne.add(item(Items[i].A_name, Items[i].Price, "images/${indexs}.jpg"));
                                      }
                                    }
                                  });


                                }
                                else if(ca[index].A_name=='البطاطا المقلية'){
                                  setState(() {
                                    ne=[];

                                    for(int i=0;i<ca.length;i++){
                                      if(i!=1){
                                        setState(() {
                                          ca[i].c1=Colors.red;
                                          ca[i].c2=Colors.white;
                                        });

                                      }
                                      else{
                                        setState(() {
                                          ca[i].c1=Colors.white;
                                          ca[i].c2=Colors.red;
                                        });

                                      }
                                    }
                                    indexs="1";
                                    for(int i=0;i<Items.length;i++){
                                      if(Items[i].C_N=="1"){
                                        ne.add(item(Items[i].A_name,Items[i].Price,"images/${indexs}.jpg"));
                                      }
                                    }
                                  });

                                }

                                else if(ca[index].A_name=='الجوانح'){
                                  setState(() {
                                    ne=[];

                                    for(int i=0;i<ca.length;i++){
                                      if(i!=2){
                                        setState(() {
                                          ca[i].c1=Colors.red;
                                          ca[i].c2=Colors.white;
                                        });

                                      }
                                      else{
                                        setState(() {
                                          ca[i].c1=Colors.white;
                                          ca[i].c2=Colors.red;
                                        });

                                      }
                                    }
                                    indexs="2";
                                    for(int i=0;i<Items.length;i++){
                                      if(Items[i].C_N=="2"){
                                        ne.add(item(Items[i].A_name,Items[i].Price,"images/${indexs}.jpg"));
                                      }
                                    }
                                  });

                                }
                                else if(ca[index].A_name=='بركر اللحم'){
                                  setState(() {
                                    ne=[];

                                    for(int i=0;i<ca.length;i++){
                                      if(i!=3){
                                        setState(() {
                                          ca[i].c1=Colors.red;
                                          ca[i].c2=Colors.white;
                                        });

                                      }
                                      else{
                                        setState(() {
                                          ca[i].c1=Colors.white;
                                          ca[i].c2=Colors.red;
                                        });

                                      }
                                    }
                                    indexs="3";
                                    for(int i=0;i<Items.length;i++){
                                      if(Items[i].C_N=="3"){
                                        ne.add(item(Items[i].A_name,Items[i].Price,"images/${indexs}.jpg"));
                                      }
                                    }
                                  });

                                }
                                else if(ca[index].A_name=='بركر الدجاج'){
                                  setState(() {
                                    ne=[];

                                    for(int i=0;i<ca.length;i++){
                                      if(i!=4){
                                        setState(() {
                                          ca[i].c1=Colors.red;
                                          ca[i].c2=Colors.white;
                                        });

                                      }
                                      else{
                                        setState(() {
                                          ca[i].c1=Colors.white;
                                          ca[i].c2=Colors.red;
                                        });

                                      }
                                    }
                                    indexs="4";
                                    for(int i=0;i<Items.length;i++){
                                      if(Items[i].C_N=="4"){
                                        ne.add(item(Items[i].A_name,Items[i].Price,"images/${indexs}.jpg"));
                                      }
                                    }
                                  });

                                }
                                else if(ca[index].A_name=='هوت دوغ'){
                                  setState(() {
                                    ne=[];

                                    for(int i=0;i<ca.length;i++){
                                      if(i!=5){
                                        setState(() {
                                          ca[i].c1=Colors.red;
                                          ca[i].c2=Colors.white;
                                        });

                                      }
                                      else{
                                        setState(() {
                                          ca[i].c1=Colors.white;
                                          ca[i].c2=Colors.red;
                                        });

                                      }
                                    }
                                    indexs="5";
                                    for(int i=0;i<Items.length;i++){
                                      if(Items[i].C_N=="5"){
                                        ne.add(item(Items[i].A_name,Items[i].Price,"images/${indexs}.jpg"));
                                      }
                                    }
                                  });

                                }
                                else if(ca[index].A_name=='اجعلها وجبة'){
                                  setState(() {
                                    ne=[];

                                    for(int i=0;i<ca.length;i++){
                                      if(i!=6){
                                        setState(() {
                                          ca[i].c1=Colors.red;
                                          ca[i].c2=Colors.white;
                                        });

                                      }
                                      else{
                                        setState(() {
                                          ca[i].c1=Colors.white;
                                          ca[i].c2=Colors.red;
                                        });

                                      }
                                    }
                                    indexs="6";
                                    for(int i=0;i<Items.length;i++){
                                      if(Items[i].C_N=="6"){
                                        ne.add(item(Items[i].A_name,Items[i].Price,"images/${indexs}.jpg"));
                                      }
                                    }
                                  });

                                }
                                else if(ca[index].A_name=='المشروبات'){
                                  setState(() {
                                    ne=[];

                                    for(int i=0;i<ca.length;i++){
                                      if(i!=7){
                                        setState(() {
                                          ca[i].c1=Colors.red;
                                          ca[i].c2=Colors.white;
                                        });

                                      }
                                      else{
                                        setState(() {
                                          ca[i].c1=Colors.white;
                                          ca[i].c2=Colors.red;
                                        });

                                      }
                                    }
                                    indexs="7";
                                    for(int i=0;i<Items.length;i++){
                                      if(Items[i].C_N=="7"){
                                        ne.add(item(Items[i].A_name,Items[i].Price,"images/${indexs}.jpg"));
                                      }
                                    }
                                  });

                                }
                              }, child: Text(ca[index].A_name,style: TextStyle(color: ca[index].c2),)),
                        );
                      }, separatorBuilder: (context,index){
                    return SizedBox(
                      width: 10,
                    );
                  }, itemCount: ca.length),
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height-120,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return DelayedDisplay(
                          delay: Duration(milliseconds: 200*(index+1)),
                          child: Card(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(ne[index].Image,height: 150,width: 150,fit: BoxFit.fill,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(ne[index].A_name,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                                    Text("السعر : ${ne[index].Price}",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)
                                  ],
                                ),

                              ],
                            ),
                            color: Colors.black,
                            elevation: 10,
                          ),
                        );

                      }, separatorBuilder: (context,index){
                    return SizedBox(
                      height: 10,
                    );
                  }, itemCount: ne.length)


              )
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
