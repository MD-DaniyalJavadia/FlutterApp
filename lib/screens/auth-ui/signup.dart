import 'package:firstapp/constants/app_constant.dart' show AppConstant;
import 'package:firstapp/screens/auth-ui/siginpage.dart';
import 'package:firstapp/components/singup_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';


import 'package:provider/provider.dart';class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignupPage>
{

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SigupProvider sigupProvider=Provider.of<SigupProvider>(context);
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
                AppConstant.logoImage,
                height: 400,
                width: 200,
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                controller: password,
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
                controller: fullname,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                controller: name,
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
                onPressed: () {
                  sigupProvider.SignupValidation(userName: name, userEmail: email, userPassword: password, context: context);
                },
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
