import 'package:flutter/material.dart';
import 'package:project1/screens/login.dart';
import 'package:project1/screens/welcome3.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});

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
                        color: Color(0xffF4FCFF),
                        borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/w2.jpg",
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
                    color:  Color(0xffF4FCFF),
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
                      Text(" Made especially for you ! ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: Colors.teal,
                        ),
                      ),
                     // SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text("Get ready for a unique experience with various home excercises and plans "
                            "designed according to your favourite muscle ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
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
                              MaterialPageRoute(builder: (context) => Welcome3()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 80),
                            child: Text("Next",
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
