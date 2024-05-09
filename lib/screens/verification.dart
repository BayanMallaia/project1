import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';
import 'package:project1/screens/send.dart';

  class verification extends StatelessWidget {
  const verification({super.key });

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
  body:
  Container(
  padding: EdgeInsets.all(10),
  child: Column(
  children: [
  const CircleAvatar(
  radius: 100,

  backgroundColor: Color.fromARGB(255, 224, 225, 225),
  child: Align(
  alignment: Alignment.center,
  child: CircleAvatar(
  radius: 98,

  backgroundImage: AssetImage('assets/images/ver.jpg',
  ),
  ),
  ),
  ),
  const SizedBox(height: 25),

  const Text("Please enter your code  :",style: TextStyle(fontSize: 35,

  color: Color(0xff01CFFF),
    fontFamily: 'Pacifico'
  ),
  textAlign: TextAlign.start ),


  const SizedBox(height: 25),

  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  TextFieldOtp(first: true,last:false),
  TextFieldOtp(first: false,last:false),
  TextFieldOtp(first: false,last:false),
  TextFieldOtp(first: false,last:false),
  TextFieldOtp(first: false,last:false),
  //TextFieldOtp(first: false,last:true),
  ],) ,
  const SizedBox(height: 35),
/*
  ElevatedButton(
  onPressed: (){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Send()),
    );
  },

  style: ButtonStyle(
  fixedSize: MaterialStateProperty.all(Size(350, 50)),


  foregroundColor: MaterialStateProperty.all<Color>(
  Colors.white),
  backgroundColor: MaterialStateProperty.all<Color>(
  Color(0xff01CFFF)),
  shape: MaterialStateProperty.all<
  RoundedRectangleBorder>(
  RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(22),
  ),
  ),
  ),
  child: const Padding(
  padding: EdgeInsets.all(14),

  child: Text(  "Next",
  style: TextStyle(fontSize: 20,
  )),



  ),

  ),*/

    ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 350, height: 55), // تحديد العرض والارتفاع المطلوبين
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Send()),
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

  );
  }
  }

  class TextFieldOtp extends StatefulWidget {

  bool first;
  bool last;
  TextFieldOtp({
  required this.first,
  required this.last,
  });

  @override
  State<TextFieldOtp> createState() => _TextFieldOtpState();
  }

  class _TextFieldOtpState extends State<TextFieldOtp> {
  @override
  Widget build(BuildContext context) {
  return Container(
  decoration: BoxDecoration(
  color: Color.fromARGB(255, 224, 225, 224),
  border: Border.all(color: Colors.white,),
  borderRadius: BorderRadius.circular(15),
  ),
  child: TextField(

  autofocus: true,
  onChanged: (value) {
  if (value.length == 1 && widget.last == false) {
  FocusScope.of(context).nextFocus();
  }
  if (value.length == 0 && widget.first == false) {
  FocusScope.of(context).previousFocus();
  }
  },
  // }),
  inputFormatters: [
  LengthLimitingTextInputFormatter(1)],
  keyboardType: TextInputType.number,
  textAlign: TextAlign.center,
  style:  TextStyle(fontSize: 25),
  decoration: InputDecoration(
  hintText: "0",
  hintStyle: TextStyle(color: Colors.black),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide( width:2,color:Color(0xff01CFFF)),
  borderRadius: BorderRadius.circular(15),
  ),
  //border: InputBorder.none,
  constraints: BoxConstraints(
  maxWidth: MediaQuery.sizeOf(context).width / 7,
  maxHeight: MediaQuery.sizeOf(context).width / 8)),
  ),
  );
  }
  }
