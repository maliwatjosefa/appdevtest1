// import 'package:appdevnursie/WelcomeScreen.dart';
// import 'package:appdevnursie/auth.dart';
// //import 'package:appdevnursie/google.dart';
// import 'package:appdevnursie/services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// //import 'package:appdevnursie/wrapper.dart';
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(), 
      
//       title: 'Nursie',
//       theme: ThemeData(
//           //primarySwatch: colorCustom,
//           visualDensity: VisualDensity.adaptivePlatformDensity),
      
    
//   );}
// }

import 'package:appdevnursie/services2.dart/auth.dart';
import 'package:appdevnursie/dashboard/homeremedy/remedies.dart';
import 'package:appdevnursie/screens/login.dart';

import 'package:appdevnursie/services2.dart/services.dart';
import 'package:appdevnursie/services2.dart/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:appdevnursie/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _init = Firebase.initializeApp();
    return FutureBuilder (
      future: _init,
      builder: (context,snapshot) {
        if(snapshot.hasError) {
          return ErrorWidget();
        } 
        else if (snapshot.hasData) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<AuthService>.value(value: AuthService()),
              StreamProvider<User>.value(
                   value: AuthService().user,
                  initialData: null)
            ],
          
            child: MaterialApp(
              theme: ThemeData(
                primaryColor: Colors.black),
              debugShowCheckedModeBanner: false,
              //home: Login(),
              home: Wrapper()
              
              
            ),
          );}
        else {
          //return Welcome();
        }
        },
     );
    
  }
}

class ErrorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center (
        child: Column (
          children: [
            Icon(Icons.error), Text("Something went wrong!")
          ],
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
        ),
      
    );
  }
}