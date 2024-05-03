import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class Send extends StatefulWidget {


const Send({super.key });

@override
State<Send> createState() => _MyAppState();
}

class _MyAppState extends State<Send> {
bool obscureText = true;
@override
Widget build(BuildContext context) {
return GetMaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
appBar: AppBar(),
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
radius: 97,

backgroundImage: AssetImage('assets/images/send.jpg',
),
),
),
),
const SizedBox(height: 5,),

const Text("Please enter your code and password :",style: TextStyle(fontSize: 21,

color: Color(0xff017DFA)),
textAlign: TextAlign.start ),
SizedBox(
height: 13,
),
TextField(
obscureText:  obscureText,
decoration: InputDecoration(
labelText: "Newpassword:",
suffixIcon: IconButton(onPressed:(){

setState(() {
obscureText=!obscureText;


});
}, icon: Icon(obscureText ? Icons.visibility_off:Icons.visibility,size: 25)),
suffixIconColor: Color(0xff017DFA),
prefixIcon: InkWell(child: Icon(Icons.lock,size: 25)),
prefixIconColor: Colors.black,
labelStyle: TextStyle(color: Color(0xff017DFA),fontSize: 20,),
border: OutlineInputBorder(),
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(color: Color(0xff017DFA),width: 2.2),
borderRadius: BorderRadius.circular(30)
),
enabledBorder: OutlineInputBorder(
borderSide:BorderSide(color: Colors.black,width: 2),
borderRadius: BorderRadius.circular(30)
)
),
),
const SizedBox(height: 15),

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
SizedBox(height: 20),
ElevatedButton(
onPressed: (){

},

style: ButtonStyle(
fixedSize: MaterialStateProperty.all(Size(350, 50)),


foregroundColor: MaterialStateProperty.all<Color>(
Colors.white),
backgroundColor: MaterialStateProperty.all<Color>(
Color(0xff017DFA)),
shape: MaterialStateProperty.all<
RoundedRectangleBorder>(
RoundedRectangleBorder(
borderRadius: BorderRadius.circular(22),
),
),
),
child: const Padding(
padding: EdgeInsets.all(14),

child: Text(  "Send",
style: TextStyle(fontSize: 20,
)),

),

),
]),
),


),

);
}
}

class TextFieldOtp extends StatelessWidget {

bool first;
bool last;
TextFieldOtp({
required this.first,
required this.last,
});
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
if (value.length == 1 && last == false) {
FocusScope.of(context).nextFocus();
}
if (value.length == 0 && first == false) {
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
borderSide: BorderSide( width:2,color: Color(0xff017DFA)),
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