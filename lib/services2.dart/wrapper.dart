import 'package:appdevnursie/services2.dart/auth.dart';
import 'package:appdevnursie/screens/login.dart';
//import 'package:appdevnursie/screens/dashboard.dart';
//import 'package:appdevnursie/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdevnursie/services2.dart/homepage.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    final user = Provider.of<User>(context);
     if (user != null) {
       //return Login();
       return Authentication();
       //return Dashboard();
    }// } else {
       //return Login();
       return Authentication();
    }
  }
