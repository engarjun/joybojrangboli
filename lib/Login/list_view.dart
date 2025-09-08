import 'package:flutter/material.dart';
class ListV extends StatefulWidget {
  final name,pass;
  const ListV({super.key, required this.name, required this.pass});

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context,index){
            return ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete,color: Colors.red,),
              title: Text(widget.pass),
              subtitle: Text(widget.name),

            );
          }),
    );
  }
}
