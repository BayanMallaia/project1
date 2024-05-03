import 'package:flutter/material.dart';
class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _MyAppState();
}
class _MyAppState extends State<Choose> {
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
            backgroundColor: Color(0xFF3B95C9),
            // Color(0xFF3B95C9)  title: Text("sign up"),
          ),
          body: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text("please choose the muscle you want to work on :"
                  ,style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold,
                    color:Colors.cyan,

                  ),),
                CheckboxListTile(
                    activeColor: Color(0xff157E9F),
                    checkColor: Colors.white,
                    title: Text("The Belly",style: TextStyle(fontSize: 27,),),
                    value: status1, onChanged: (val){
                  setState(() {
                    status1 = val!;
                  });
                }),
                CheckboxListTile(
                    activeColor: Color(0xff157E9F),
                    checkColor: Colors.white,

                    title: Text("Legs",style: TextStyle(fontSize: 27)),
                    value: status2, onChanged: (val){
                  setState(() {
                    status2 = val!;
                  });
                }),
                CheckboxListTile(
                    activeColor: Color(0xff157E9F),
                    checkColor: Colors.white,
                    title: Text("The arms",style: TextStyle(fontSize: 27)),
                    value: status3, onChanged: (val){
                  setState(() {
                    status3 = val!;
                  });
                }),
                CheckboxListTile(
                    activeColor: Color(0xff157E9F),
                    checkColor: Colors.white,
                    title: Text("Back and shoulders",style: TextStyle(fontSize: 27)),
                    value: status4, onChanged: (val){
                  setState(() {
                    status4 = val!;
                  });
                }),
                CheckboxListTile(
                    activeColor: Color(0xff157E9F),
                    checkColor: Colors.white,
                    title: Text("The chest",style: TextStyle(fontSize: 27)),
                    value: status5, onChanged: (val){
                  setState(() {
                    status5 = val!;
                  });
                }),
                CheckboxListTile(
                    activeColor: Color(0xff157E9F),
                    checkColor: Colors.white,
                    title: Text("whole body",style: TextStyle(fontSize: 27)),
                    value: status6, onChanged: (val){
                  setState(() {
                    status6 = val!;
                  });
                }),
                SizedBox(height: 50,width: 50),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 240, height: 60),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Row(
                      children: [
                        Text(" Let's get started",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color:Color(0xff48599E),
                        ),),
                      //  Icon(Icons.forward_outlined,color: Colors.indigo,),
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
        ) );
  }}