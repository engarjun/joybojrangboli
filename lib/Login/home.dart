import 'package:flutter/material.dart';
import 'package:joybojrangboli/Login/list_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Module 8 Class 2',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.network(
                width: 100,
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Facebook_logo_%282023%29.svg/2560px-Facebook_logo_%282023%29.svg.png',
              ),
            ),
            Image.asset('asset/Arjo.jpg', width: 100),
            SizedBox(height: 10),
            Text(
              'Login with phone with password',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      'Phone number',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your valid phone number!';
                        } else if (value.length != 11) {
                          return 'Your phone number is not correct';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Passwords',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please input your password';
                        } else if (value.length < 6) {
                          return 'Password must be at lest 6 characters';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                        width: 300,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange
                            ),
                            onPressed: (){
                              if(_formKey.currentState!.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Login Successfully'))
                                );
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListV(name: phoneController.text, pass: passwordController.text,)));
                              }
                            }, child: Text('Login',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
