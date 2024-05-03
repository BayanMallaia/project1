import 'dart:ui';
import 'package:flutter/material.dart';

class Choose2 extends StatefulWidget {
  @override
  State<Choose2> createState() => _Choose2State();
}

class _Choose2State extends State<Choose2> {

  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;
  bool status6 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.grey,
            title: Text("Choose muscle:"),
        ),*/
        body: Center(
          child: Stack(
            children: [
              Image(image:AssetImage('assets/images/adalafina.jpg',
              //  fit: BoxFit.cover,
              )),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  //color: Colors.black.withOpacity(0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      /*  Text("please choose the muscle you want to work on :"
                          ,style: TextStyle(
                            fontSize: 10,fontWeight: FontWeight.normal,
                            color:Colors.cyan,

                          ),),*/
                        SizedBox(height: 280,width: 50),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text("The Belly",style: TextStyle(fontSize: 18,
                            color:Color(0xff777777)),),
                            value: status1, onChanged: (val){
                          setState(() {
                            status1 = val!;
                          });
                        }),

                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,


                            title: Text("Legs",style: TextStyle(fontSize: 18,
                            color:Colors.indigo)),
                            value: status2, onChanged: (val){
                          setState(() {
                            status2 = val!;
                          });
                        }),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text("The arms",style: TextStyle(fontSize: 18,
                            color: Colors.deepPurple)),
                            value: status3, onChanged: (val){
                          setState(() {
                            status3 = val!;
                          });
                        }),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text("Back and shoulders",style: TextStyle(fontSize: 18,
                                color: Colors.blue)),
                            value: status4, onChanged: (val){
                          setState(() {
                            status4 = val!;
                          });
                        }),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text("The chest",style: TextStyle(fontSize: 18,
                                color: Colors.purple)),
                            value: status5, onChanged: (val){
                          setState(() {
                            status5 = val!;
                          });
                        }),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text("whole body",style: TextStyle(fontSize: 18,
                                color: Color(0xff537CBA))),
                            value: status6, onChanged: (val){
                          setState(() {
                            status6 = val!;
                          });
                        }),
                      SizedBox(height: 150,width: 50),

                        ConstrainedBox(
                          constraints: BoxConstraints.tightFor(width: 150, height: 50), // تحديد العرض والارتفاع المطلوبين
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            child: Text('Start',style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.normal,
                              color: Colors.indigo,
                            ),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xffCDEEFF),
                              // يمكنك تعديل الأسلوب حسب الحاجة
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


