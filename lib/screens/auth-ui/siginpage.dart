import 'package:firstapp/constants/app_constant.dart';
import 'package:firstapp/screens/auth-ui/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';


class SiginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In'), centerTitle: true),
      body: SingleChildScrollView(
     child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                AppConstant.logoImage,
                height: 400,
                width: 200,
              ),
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
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text('Login', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 100),
            Container(child: Column(
              children: [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text:"Don't have an account? ",style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: '',
                    ),

                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage()),
                          );
                        },
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
