import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SiginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In'), centerTitle: true),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/shoppingbags.webp',height: 400,width: 200,),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Password',
                ),
                obscureText: true,
                
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child:
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                    child: Text('Login',style: TextStyle(color: Colors.white),))
            ),
          ],
        ),
      ),
    );
  }
}
