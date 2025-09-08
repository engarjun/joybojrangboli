import 'package:flutter/material.dart';
import 'package:joybojrangboli/13_curd_App_190825/update_product_screen.dart';

import 'add_new_products_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products List',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text('Products Name'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Code: 245788111'),
                Row(
                  spacing: 16,
                  children: [Text('Quantity: 5'), Text('Unite Price: 500 ')],
                ),
              ],
            ),
            trailing: PopupMenuButton<ProductOption>(
              itemBuilder: (ctx) {
                return [
                  PopupMenuItem(
                    value: ProductOption.update,
                    child: Text('Update'),
                  ),
                  PopupMenuItem(
                    value: ProductOption.delete,
                    child: Text('Delete'),
                  ),
                ];
              },
              onSelected: (ProductOption selectedOption){
                if(selectedOption == ProductOption.delete){
                  print('Deleted');
                }else if(selectedOption == ProductOption.update){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProductScreen()));
                }

              },
            ),

          );
        },
        separatorBuilder: (context, index) {
          return Divider(indent: 70);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewProductsScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

enum ProductOption { update, delete }
