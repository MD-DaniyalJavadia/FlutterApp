import 'package:flutter/material.dart';
class SigupProvider with ChangeNotifier{

  void SignupValidation({
    required TextEditingController? userName,
    required TextEditingController? userEmail,
    required TextEditingController? userPassword,
    required TextEditingController? userFullName,
    required BuildContext context,

  })async{
    if(userName!.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Name is Required !'),));
      return;
    }
    else if(userEmail!.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Email is Required !'),));
      return;
    }
    else if(userPassword!.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Password is Required !'),));
      return;
    }
    else if(userFullName!.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Full Name is Required !'),));
    }

  }

}