import 'package:flutter/material.dart';
import 'package:joybojrangboli/8_Module_Flutter_Widgets_Push_Pop/home.dart';

import '2_registration.dart';
class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('Previous page'),style: buttonStyle,),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Registration()),(router)=> false);
          }, child: Text('pushAndRemoveUntil Ristration page'),style: buttonStyle,),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Registration()));
          }, child: Text('pushReplacement Ristration page'),style: buttonStyle,),

        ],
      ),
    );
  }
}
