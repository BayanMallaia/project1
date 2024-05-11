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
        appBar: AppBar(
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
            title: Text("Choose muscle:",
            style: TextStyle(color: Colors.indigo,
            fontWeight: FontWeight.w600),),
        ),
        backgroundColor: Color(0xffC0C0C0 ),
        body: Center(
          child: Stack(
            children: [
              Image(
                  image: AssetImage(
                'assets/images/img1.jpg',
                //  fit: BoxFit.cover,
              )),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                child: Container(
                  //color: Colors.black.withOpacity(0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /* C0C0C0 Text("please choose the muscle you want to work on :"
                          ,style: TextStyle(
                            fontSize: 10,fontWeight: FontWeight.normal,
                            color:Colors.cyan,

                          ),),*/
                        SizedBox(height: 150, width: 50),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text(
                                textDirection: TextDirection.rtl,
                              "whole body",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.indigo,),
                            ),
                            value: status1,
                            onChanged: (val) {
                              setState(() {
                                status1 = val!;
                              });
                            },
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                                    SizedBox(height: 20, width: 70),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text(
                              textDirection: TextDirection.rtl,
                              "The chest",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.indigo)),
                            value: status2,
                            onChanged: (val) {
                              setState(() {
                                status2 = val!;
                              });
                            },
                              controlAffinity: ListTileControlAffinity.trailing
                            ),
                                  SizedBox(height: 18, width: 70),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text(
                              textDirection: TextDirection.rtl,
                              "Back and shoulders",
                                style: TextStyle(
                                  fontSize: 21, color: Colors.indigo)),
                            value: status3,
                            onChanged: (val) {
                              setState(() {
                                status3 = val!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            SizedBox(height: 20, width: 70),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text(
                              textDirection: TextDirection.rtl,
                              " The arms",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.indigo)),
                            value: status4,
                            onChanged: (val) {
                              setState(() {
                                status4 = val!;
                              });
                            },
                                controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            SizedBox(height: 40, width: 70),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text(
                              textDirection: TextDirection.rtl,
                              "The Belly",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.indigo)),
                            value: status5,
                            onChanged: (val) {
                              setState(() {
                                status5 = val!;
                              });
                            },
                                  controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            SizedBox(height: 35, width: 70),
                        CheckboxListTile(
                            activeColor: Color(0xff157E9F),
                            checkColor: Colors.white,
                            title: Text(
                              textDirection: TextDirection.rtl,
                              "Legs",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.indigo)
                                    ),
                            value: status6,
                            onChanged: (val) {
                              setState(() {
                                status6 = val!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.trailing,
                            ),
                        SizedBox(height: 60, width: 70),
                        ConstrainedBox(
                          constraints: BoxConstraints.tightFor(
                              width: 150,
                              height: 50), // تحديد العرض والارتفاع المطلوبين
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Start',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.indigo,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffCDEEFF),
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