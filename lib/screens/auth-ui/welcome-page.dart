import 'package:firstapp/constants/app_constant.dart' show AppConstant;
import 'package:flutter/material.dart';
import 'package:firstapp/screens/auth-ui/siginpage.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstant.appName,
          style: GoogleFonts.dancingScript(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(AppConstant.logoImage,height: 400,width: 200,),
            ),
            Container(
                width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SiginPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.email,color: Colors.blueAccent,),
                    SizedBox(width: 8),
                    Text('Sign in With Email'),
                    SizedBox(width: 8),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(AppConstant.appName,style: TextStyle(fontWeight:FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }

}