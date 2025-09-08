import 'package:flutter/material.dart';
import 'package:joybojrangboli/8_Module_Flutter_Widgets_Push_Pop/1_page.dart';
import 'package:joybojrangboli/app.dart';
class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
      foregroundColor: Colors.white
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Status'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> NextPage()));
          }, child: Text('Nexe Page'),style: buttonStyle,),
          Text('Data',style: Theme.of(context).textTheme.bodyLarge,),
          Text('Data',style: Theme.of(context).textTheme.bodyMedium,),
          Text('Data',style: Theme.of(context).textTheme.bodySmall,),
          Text('Normal Data'),
          ElevatedButton(onPressed: (){}, child: Text('data')),
          ElevatedButton(onPressed: (){}, child: Text('data')),
          ElevatedButton(onPressed: (){}, child: Text('data')),
          ElevatedButton(onPressed: (){}, child: Text('data')),
          
          Theme(data: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white
              )
            )
          ), child: ElevatedButton(onPressed: (){}, child: Text('Ai data')))
        
        ],
      ),
    );
  }
}
