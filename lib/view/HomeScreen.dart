import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    TextEditingController emailController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // if(_formKey.currentState!.validate())
          //   {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(content: Text('Validated')),
          //     );
          //   }
          // else
          //   {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(content: Text('Failed to validate')),
          //     );
          //   }
        },
      ),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField(
            //   controller: emailController,
            //   cursorColor: Colors.red,
            //   decoration: InputDecoration(
            //     contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            //     prefixIcon: Icon(Icons.email, color: Colors.white,),
            //     suffixIcon: Icon(Icons.accessibility, color: Colors.white,),
            //     filled: true,
            //     fillColor: Colors.lightGreen,
            //     hintText: "Email TextField",
            //     hintStyle: TextStyle(color: Colors.black),
            //     label: Text("Email", style: TextStyle(color: Colors.blueAccent)),
            //     border:OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.greenAccent)),
            //     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amberAccent, width: 5))
            //   ),
            // ),
            // SizedBox(height: 10,),
            Form(child: TextFormField(
              key: _formKey,
              validator: (value){
                if (value == null || value.isEmpty)
                  {
                    return "Enter a valid email"; // Enthenkilum value enter cheythindenkil validate aayi
                  }
                else
                  {
                    return null;
                  }
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  prefixIcon: Icon(Icons.email, color: Colors.white,),
                  suffixIcon: Icon(Icons.accessibility, color: Colors.white,),
                  filled: true,
                  fillColor: Colors.amberAccent,
                  hintText: "Email TextFormField",
                  hintStyle: TextStyle(color: Colors.black),
                  label: Text("Email", style: TextStyle(color: Colors.blueAccent)),
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.greenAccent)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.greenAccent, width: 5))
              ),
            ),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Validated')),
                );
              }
              else
              {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Failed to validate')),
                );
              }
            },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}