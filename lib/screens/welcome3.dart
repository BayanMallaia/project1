import 'package:flutter/material.dart';
import 'package:project1/screens/login.dart';
import 'package:project1/screens/welcome2.dart';

class Welcome3 extends StatelessWidget {
  const Welcome3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Color(0xff34D0DC),
        // Color(0xFF3B95C9)  title: Text("sign up"),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:Stack(
            children:
            [
              Stack(
                  children:[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.6,
                      decoration: BoxDecoration(
                        color: Color(0xffFEFEFE),
                        borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/w3.jpg",
                          scale: 0.8,
                        ),
                      ),
                    ),
                  ]
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.666,
                  padding: EdgeInsets.only(top: 40 , bottom: 30),
                  decoration: BoxDecoration(
                    color:  Color(0xffFEFEFE),
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(70)),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.666,
                  padding: EdgeInsets.only(top: 40 , bottom: 30),
                  decoration: BoxDecoration(
                    color: Color(0xffC0EEFB),
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(70)),
                  ),
                  child: Column(
                    children: [
                      Text(" Track your progress",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                            color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text("View all your reports and achieve your goals."
                            " What are you waiting for? Start now...",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.teal.withOpacity(0.6),
                          ),
                        ),

                      ),
                      SizedBox(height:20),
                      Material(
                        color:  Color(0xff34D0DC),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => login()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 60),
                            child: Text("Get Started",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight:FontWeight.bold ,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ],
          )
      ),
    );
  }
}
