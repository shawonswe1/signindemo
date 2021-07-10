import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signindemo/App/services/auth.dart';

class LoginPage extends StatelessWidget {
  final AuthBase authBase;
  const LoginPage({Key? key, required this.authBase}) : super(key: key);
  Future<User>? Googlelogin(){
    try{
       authBase.Google_Sign_In();
    }catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: (){
                Googlelogin();
                print("Okey");
              }, child: const Text("Login with Google"))

            ],
          ),
        ),
      ),
    );
  }
}
