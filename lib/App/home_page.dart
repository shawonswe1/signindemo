import 'package:flutter/material.dart';
import 'package:signindemo/App/services/auth.dart';

class Home extends StatelessWidget {
  final AuthBase authBase;
  const Home({Key? key, required this.authBase}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var myEmail = authBase.UserData!.email;
    var myName = authBase.UserData!.displayName;
    return Scaffold(
      appBar: AppBar(
        title: const Text("asdfaf"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(myEmail!),
            Text(myName!),
          ],
        ),
      ),
    );
  }
}
