import 'package:firstapp/screens/auth-ui/siginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up'), centerTitle: true),
      body: SingleChildScrollView(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/shoppingbags.webp',
                height: 400,
                width: 200,
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text('Login', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 50),
            Container(child: Column(
              children: [
                RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text:"Have an account? ",style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: '',
                      ),

                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SiginPage()),
                              );
                            }
                      ),

                    ]
                ))
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
