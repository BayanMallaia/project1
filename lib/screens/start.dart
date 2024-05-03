import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Image.asset("assets/images/start2.jpg", height:450,width: 450,),
            Column(
              children: [
                Text("    Welcome  to  the  Fitness   ",style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  fontStyle: FontStyle.italic,
                ),),
                Text("     Nest !",style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                   // fontFamily: 'Pacifico'
                ),),
              ],
            ),
            Divider(
              color: Colors.white,
              height: 90,
            ),

            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 220, height: 60),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(login());
                },
                child: Row(
                  children: [
                    Text(' Get  Started',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color:Color(0xff48599E),
                    ),),
                   Icon(Icons.forward_outlined,color: Colors.indigo,),
                  ],
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer, // جعل الزر بزوايا منحنية
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color(0xffDBFDFB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // تعيين قيمة الانحناء حسب الحاجة
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
