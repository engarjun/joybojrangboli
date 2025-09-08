import 'package:flutter/material.dart';

class AddNewProductsScreen extends StatefulWidget {
  const AddNewProductsScreen({super.key});

  @override
  State<AddNewProductsScreen> createState() => _AddNewProductsScreenState();
}

class _AddNewProductsScreenState extends State<AddNewProductsScreen> {
  final GlobalKey<FormState>  _formKey = GlobalKey<FormState>();
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _codeEditingController = TextEditingController();
  final TextEditingController _quantityEditingController = TextEditingController();
  final TextEditingController _priceEditingController = TextEditingController();
  final TextEditingController _imageurlEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Products'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 8,
                children: [
                  TextFormField(
                    controller: _nameEditingController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Product Name',
                      labelText: 'Product Name',
                    ),
        
                  ),
                  TextFormField(
                    controller: _codeEditingController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Product Code',
                      labelText: 'Product Code',
                    ),
        
                  ),
                  TextFormField(
                    controller: _quantityEditingController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Product Quantity',
                      labelText: 'Product Quantity',
                    ),
        
                  ),
                  TextFormField(
                    controller: _priceEditingController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Unite Price',
                      labelText: 'Unite Price',
                    ),
        
                  ),
                  TextFormField(
                    controller: _imageurlEditingController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Image Uri',
                      labelText: 'Image Uri',
                    ),
        
                  ),
                  const SizedBox(height: 8,),
                  FilledButton(onPressed: (){
                    _nameEditingController.text;
                    _codeEditingController.text;
                    _quantityEditingController.text;
                    _priceEditingController.text;
                    _imageurlEditingController.text;
                    Navigator.pop(context);
                  }, child: Text("Add Products"))
                ],
              ),
            ) ),
      ),

    );
  }
  @override
  void dispose() {
    _nameEditingController.dispose();
    _codeEditingController.dispose();
    _quantityEditingController.dispose();
    _priceEditingController.dispose();
    _imageurlEditingController.dispose();
    super.dispose();
  }
}
