import 'package:flutter/material.dart';
import 'package:project1/screens/verification.dart';
class forget extends StatelessWidget {
  const forget({super.key});

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
          backgroundColor: Color(0xff01CFFF),
          // Color(0xFF3B95C9)  title: Text("sign up"),
        ),

    backgroundColor: Color(0xffCAD3F8),
    body:Container(
      padding: EdgeInsets.all(13),
      child: SingleChildScrollView(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Divider(
      color: Color(0xffCAD3F8),
      height: 25,
      ),
      Text('  If you forget  password Enter your email please:',
      style: TextStyle(
      color: Colors.indigoAccent,
      fontSize: 36,
          fontFamily: 'Pacifico'
      
      ),
      ),
      Divider(
      color: Color(0xffCAD3F8),
      height:50,
      ),
      Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30), // إضافة انحناء للأطراف
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
      
        Divider(
          color: Color(0xffCAD3F8),
          height: 100,
        ),
      
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 350, height: 55), // تحديد العرض والارتفاع المطلوبين
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => verification()),
              );
            },
            child: Text('Next',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0xff01CFFF),
              // يمكنك تعديل الأسلوب حسب الحاجة
            ),
          ),
        ),
      ]),
        ),
    ),

      ) );
  }
}
