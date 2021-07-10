import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signindemo/App/login_page.dart';
import 'package:signindemo/App/services/auth.dart';

import 'home_page.dart';

class LandingPage extends StatelessWidget {
  final AuthBase authBase;
  const LandingPage({Key? key, required this.authBase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: authBase.AuthStatsChange(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.active)
            {
              User? userdata = snapshot.data as User?;
              if(userdata==null)
                {
                  return  LoginPage(
                    authBase: authBase,
                  );
                }
              return Home(
                authBase: authBase,
              );
            }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
