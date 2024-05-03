import 'package:flutter/material.dart';
import 'package:project1/screens/choose.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
          backgroundColor: Color(0xFFCDEEFF),
          // Color(0xFF3B95C9)  title: Text("sign up"),
        ),
        backgroundColor: Colors.white,
        body:Container(
          padding: EdgeInsets.all(7),
          child: SingleChildScrollView(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  color: Colors.white,
                  height: 32,
                ),
              CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/register.jpg'),
                  ),
                Text('Create  account',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 40,
                      fontFamily: 'Pacifico'
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height:2,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // إضافة انحناء للأطراف
                      border: Border.all(color: Colors.black), // إضافة حدود
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person,color:Colors.blue), // إضافة أيقونة
                        labelText: "User name:",
                        labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                        border: InputBorder.none, // إزالة حدود الـ TextField
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // إضافة انحناء للأطراف
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
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // إضافة انحناء للأطراف
                      border: Border.all(color: Colors.black), // إضافة حدود
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_sharp,color:Colors.blue), // إضافة أيقونة
                        labelText: "Password:",
                        labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                        border: InputBorder.none, // إزالة حدود الـ TextField
                      ),
                    ),
                  )),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // إضافة انحناء للأطراف
                      border: Border.all(color: Colors.black), // إضافة حدود
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.balance,color:Colors.blue), // إضافة أيقونة
                        labelText: "Weight:                                           kg",
                        labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                        border: InputBorder.none, // إزالة حدود الـ TextField
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // إضافة انحناء للأطراف
                      border: Border.all(color: Colors.black), // إضافة حدود
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.line_weight,color:Colors.blue), // إضافة أيقونة
                        labelText: "Length:                                           cm",
                        labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                        border: InputBorder.none, // إزالة حدود الـ TextField
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // إضافة انحناء للأطراف
                      border: Border.all(color: Colors.black), // إضافة حدود
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.apps_outage,color:Colors.blue), // إضافة أيقونة
                        labelText: "Age:",
                        labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                        border: InputBorder.none, // إزالة حدود الـ TextField
                      ),
                    ),
                  ),
                ),

                Divider(
                  color: Colors.white,
                  height:25,
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
                    child: Text('Sign up',style: TextStyle(
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


              ] )),
        ),
      ),
    );
  }
}
