import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
import 'package:project1/screens/register.dart';

import 'choose.dart';
import 'forget.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
bool obscureText = true;
class _loginState extends State<login> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
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
          backgroundColor: Color(0xFFCDEEFF),
          // Color(0xFF3B95C9)  title: Text("sign up"),
        ),
        backgroundColor: Colors.white,
        body:Container(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  color: Colors.white,
                  height: 30,
                ),
             CircleAvatar(
                    radius: 110,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/sign in2.jpg'),
                  ),
                Text('Login',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 38,
                      fontFamily: 'Pacifico'
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100), // إضافة انحناء للأطراف
                      border: Border.all(color: Colors.black), // إضافة حدود
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail,color:Colors.blue), // إضافة أيقونة
                        labelText: "Email:",
                        labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                        border: InputBorder.none, // إزالة حدود الـ TextField
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), // إضافة انحناء للأطراف
                      border: Border.all(color: Colors.black), // إضافة حدود
                    ),
                    child: TextField(
                      obscureText:  obscureText,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_sharp,color:Colors.blue), // إضافة أيقونة
                        labelText: "Password:",
                        labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                        suffixIcon: IconButton(onPressed:(){

setState(() {
obscureText=!obscureText;


});
}, icon: Icon(obscureText ? Icons.visibility_off:Icons.visibility,size: 25)),
suffixIconColor: Colors.blue,

                        border: InputBorder.none, // إزالة حدود الـ TextField
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height:30,
                ),
                Row(
                  children: [
                    Text("   Don't  have an account ?  ",
                      style:TextStyle(fontSize: 18, color: Colors.black87 ,),),

              Center(
           child:InkWell(
              child: Text("     Register   now",
                          style:TextStyle(fontSize: 20, color: Colors.indigo ,
                              fontFamily: 'Pacifico'),),
             onTap: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Register()),
               );
             },
            )),
                  ],
                ),

                Divider(
                  color: Colors.white,
                  height:40,
                ),

               Row(
                  children: [
                    Text("   Did you forget your password ?  ",
                      style:TextStyle(fontSize: 18, color: Colors.black87 ,),),

                    Center(
                        child:InkWell(
                          child: Text("     Ok",
                            style:TextStyle(fontSize: 30, color: Color(0xffE9294B) ,
                                fontFamily: 'Pacifico'),),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => forget()),
                            );
                          },
                        )),
                  ],
                ),

                Divider(
                  color: Colors.white,
                  height: 50,
                ),

              ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 150, height: 50), // تحديد العرض والارتفاع المطلوبين
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Choose()),
                      );
                    },
                    child: Text('Sign in',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Colors.indigo,
                    ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Color(0xFFCDEEFF),
                      // يمكنك تعديل الأسلوب حسب الحاجة
                    ),
                  ),
                ),

              ] )),
        ),
      ),
    );


  }
}