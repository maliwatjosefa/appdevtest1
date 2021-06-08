// import 'dart:convert';
// //import 'package:appdevnursie/google.dart';
// import 'package:appdevnursie/register.dart';
// import 'package:appdevnursie/screens/dashboard.dart';
// import 'package:http/http.dart' as http;
// import 'package:appdevnursie/forgotpw.dart';
// import 'package:appdevnursie/services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Login extends StatefulWidget {
//   final Function toggleScreen;
//   const Login({Key key, this.toggleScreen}) : super(key: key);
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   TextEditingController _emailController;
//   TextEditingController _passwordController;
//   final _formkey = GlobalKey<FormState>();
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   //LoginService loginService = LoginService();

//   static final FacebookLogin facebookSignIn = new FacebookLogin();
//   //final FirebaseAuth _auth = FirebaseAuth.instance;
//   String name = '', image;
//   //GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

//   @override
//   void initState() {
//     _emailController = TextEditingController();
//     _passwordController = TextEditingController();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {

//     final loginProvider = Provider.of<AuthService>(context);
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage('assets/images/sign_wp.png'),
//                   fit: BoxFit.cover),
//             ),
//             child: Form(
//                 key: _formkey,
//                 child: Column(children: [
//                   SingleChildScrollView(
//                     child: Container(
//                       child: Padding(
//                         padding: const EdgeInsets.all(36.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             SizedBox(height: 210),
//                             TextFormField(
//                               controller: _emailController,
//                               validator: (val) => val.isNotEmpty
//                                   ? null
//                                   : "Please enter an email",
//                               decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.fromLTRB(
//                                       50.0, 15.0, 20.0, 15.0),
//                                   hintText: "Email",
//                                   prefixIcon: Icon(Icons.mail),
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(32))),
//                             ),
//                             SizedBox(height: 20),
//                             TextFormField(
//                               controller: _passwordController,
//                               obscureText: true,
//                               validator: (val) => val.length < 6
//                                   ? "Please enter more than 6 characters."
//                                   : null,
//                               decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.fromLTRB(
//                                       50.0, 15.0, 20.0, 15.0),
//                                   hintText: "Password",
//                                   prefixIcon: Icon(Icons.vpn_key),
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(32))),
//                             ),
//                             SizedBox(height: 15),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: <Widget>[
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                                 ForgotPassword()));
//                                   },
//                                   child: Container(
//                                     child: Text(
//                                       'Forgot Password?',
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontWeight: FontWeight.w700),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 )
//                               ],
//                             ),
//                             SizedBox(height: 15),
//                             MaterialButton(
//                               onPressed: () async {
//                                 if (_formkey.currentState.validate()) {
//                                   print("Email: ${_emailController.text}");
//                                   print("Email: ${_passwordController.text}");
//                                   await loginProvider.login(
//                                       _emailController.text.trim(),
//                                       _passwordController.text.trim());
//                                 }
//                                 // Navigator.push(
//                                 //     context,
//                                 //     MaterialPageRoute(
//                                 //         builder: (context) => Dashboard()));
//                               },
//                               height: 50,
//                               minWidth: loginProvider.isLoading
//                                   ? null
//                                   : double.infinity,
//                               color: Color(0xffadddce),
//                               textColor: Colors.white,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                               child: loginProvider.isLoading
//                                   ? CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                         Colors.white,
//                                       ),
//                                     )
//                                   : Text("Login",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 18)),
//                             ),
//                             SizedBox(height: 20),
//                             Center(
//                               child: Text(
//                                 'Or',
//                                 style: TextStyle(color: Colors.black),
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   InkWell(
//                                     onTap: () {},
//                                     child: Column(
//                                       children: <Widget>[
//                                         SignInButton(
//                                           Buttons.Facebook,
//                                           onPressed: () async {
//                                             final FacebookLoginResult result =
//                                                 await facebookSignIn
//                                                     .logIn(['email']);

//                                             switch (result.status) {
//                                               case FacebookLoginStatus.loggedIn:
//                                                 final FacebookAccessToken
//                                                     accessToken =
//                                                     result.accessToken;
//                                                 final graphResponse =
//                                                     await http.get(
//                                                         'https://graph.facebook.com/v2.12/me?fields=first_name,picture&access_token=${accessToken.token}');
//                                                 final profile = jsonDecode(
//                                                     graphResponse.body);
//                                                 print(profile);
//                                                 setState(() {
//                                                   name = profile['first_name'];
//                                                   image = profile['picture']
//                                                       ['data']['url'];
//                                                 });
//                                                 print('''
//                                                         Logged in!

//                                                         Token: ${accessToken.token}
//                                                         User id: ${accessToken.userId}
//                                                         Expires: ${accessToken.expires}
//                                                         Permissions: ${accessToken.permissions}
//                                                         Declined permissions: ${accessToken.declinedPermissions}
//                                                         ''');
//                                                 break;
//                                               case FacebookLoginStatus
//                                                   .cancelledByUser:
//                                                 print(
//                                                     'Login cancelled by the user.');
//                                                 break;
//                                               case FacebookLoginStatus.error:
//                                                 print(
//                                                     'Something went wrong with the login process.\n'
//                                                     'Here\'s the error Facebook gave us: ${result.errorMessage}');
//                                                 break;
//                                             }
//                                             // Navigator.push(
//                                             //     context,
//                                             //     MaterialPageRoute(
//                                             //         builder: (ctx) =>
//                                             //             Dashboard()));
//                                           },
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   InkWell(
//                                     onTap: () {},
//                                     child: Column(
//                                       children: <Widget>[
//                                         SignInButton(Buttons.GoogleDark,
//                                             onPressed: () async {
//                                           // bool success = await loginService
//                                           //     .signInWithGoogle();

//                                           // if (success) {
//                                           //   Navigator.push(
//                                           //       context,
//                                           //       MaterialPageRoute(
//                                           //           builder: (ctx) =>
//                                           //               Dashboard()));
//                                           // }
//                           //                 final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
//                           // final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

//                           // final GoogleAuthCredential credential = GoogleAuthProvider.credential(accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

//                           // await FirebaseAuth.instance.signInWithCredential(credential).then((value) => print('registered'));
//                                         }),
//                                       ],
//                                     ),
//                                   )
//                                 ]),
//                             SizedBox(height: 5),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: <Widget>[
//                                 Text(
//                                   "Don't have an account?",
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 15),
//                                 ),
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (ctx) => Register()));
//                                   },
//                                   //=> widget.toggleScreen(),
//                                   child: Text(
//                                     "Sign Up",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w700,
//                                         decoration: TextDecoration.underline),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             if (loginProvider.errorMessage != null)
//                               Container(
//                                   padding: EdgeInsets.zero,
//                                   color: Colors.amberAccent,
//                                   child: ListTile(
//                                       title: Text(loginProvider.errorMessage),
//                                       leading: Icon(Icons.error),
//                                       trailing: IconButton(
//                                         icon: Icon(Icons.close),
//                                         onPressed: () =>
//                                             loginProvider.setMessage(null),
//                                       )))
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ]))));
//   }
// }

import 'dart:convert';
//import 'package:appdevnursie/screens/dashboard.dart';
import 'package:appdevnursie/services2.dart/homepage.dart';
import 'package:appdevnursie/screens/register.dart';
import 'package:appdevnursie/screens/dashboard.dart';
//import 'package:http/http.dart' as http;
import 'package:appdevnursie/screens/forgotpw.dart';
import 'package:appdevnursie/services2.dart/services.dart';
import 'package:appdevnursie/services2.dart/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  final Function toggleScreen;

  const Login({Key key, this.toggleScreen}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  final _formkey = GlobalKey<FormState>();

  static final FacebookLogin facebookSignIn = new FacebookLogin();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String name = '', image;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<AuthService>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/sign_wp.png'),
                  fit: BoxFit.cover),
            ),
            child: Form(
                key: _formkey,
                child: Column(children: [
                  SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(36.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 210),
                            TextFormField(
                              controller: _emailController,
                              validator: (val) => val.isNotEmpty
                                  ? null
                                  : "Please enter an email",
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      50.0, 15.0, 20.0, 15.0),
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.mail),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32))),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              validator: (val) => val.length < 6
                                  ? "Please enter more than 6 characters."
                                  : null,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      50.0, 15.0, 20.0, 15.0),
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.vpn_key),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32))),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPassword()));
                                  },
                                  child: Container(
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            MaterialButton(
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  print("Email: ${_emailController.text}");
                                  print("Email: ${_passwordController.text}");
                                  await loginProvider.login(
                                      _emailController.text.trim(),
                                      _passwordController.text.trim());
                                }
                              },
                              height: 50,
                              minWidth: loginProvider.isLoading
                                  ? null
                                  : double.infinity,
                              color: Color(0xffadddce),
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: loginProvider.isLoading
                                  ? CircularProgressIndicator(
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                        Colors.white,
                                      ),
                                    )
                                  : Text("Login",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                'Or',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(height: 10),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Column(
                                      children: <Widget>[
                                        SignInButton(
                                          Buttons.Facebook,
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ForgotPassword()));
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Column(
                                      children: <Widget>[
                                        SignInButton(Buttons.GoogleDark,
                                            onPressed: () {
                                          //login();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (ctx) =>
                                                      Dashboard()));
                                        }),
                                      ],
                                    ),
                                  )
                                ]),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) => Register()));
                                  },
                                  //=> widget.toggleScreen(),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                            if (loginProvider.errorMessage != null)
                              Container(
                                  padding: EdgeInsets.zero,
                                  color: Colors.amberAccent,
                                  child: ListTile(
                                      title: Text(loginProvider.errorMessage),
                                      leading: Icon(Icons.error),
                                      trailing: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () =>
                                            loginProvider.setMessage(null),
                                      )))
                          ],
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
