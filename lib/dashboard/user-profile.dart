import 'package:appdevnursie/screens/login.dart';
import 'package:appdevnursie/screens/dashboard.dart';
import 'package:appdevnursie/services2.dart/homepage.dart';
import 'package:appdevnursie/services2.dart/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffe7ecf0), body: Body1());
  }
}

class Body1 extends StatefulWidget {
  @override
  _Body1State createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
        child: Stack(
      children: <Widget>[
        new Container(
            height: 600,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/profileHeader.png')))),
        new Padding(
          padding: EdgeInsets.only(top: 60),
          child: IconButton(
              alignment: Alignment.topLeft,
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Dashboard()));
              }),
        ),
        SafeArea(
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 80),
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(bottom: 0),
                        child: Column(
                          children: <Widget>[
                            //SizedBox(height: 40,),
                            Title(),
                            SizedBox(height: 70),
                            ProfilePic(),
                            SizedBox(height: 60),
                            MyAccount(),
                            SizedBox(height: 90),
                            SignOut(),
                          ],
                        ))
                  ],
                ))),
      ],
    ));
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Text.rich(
              TextSpan(
                text: "User Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  //fontFamily: "Caveat",
                ),
              ),
              style: TextStyle(fontSize: 30)),
        ]));
  }
}

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        width: 150,
        child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/profilepic.jpg'),
            ),
            Positioned(
                right: -12,
                bottom: 0,
                child: SizedBox(
                    height: 46,
                    width: 46,
                    child: FlatButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.white)),
                        color: Color(0xffffffff),
                        onPressed: () {},
                        child: SvgPicture.asset("assets/images/camera.svg",
                            width: 23)))),
          ],
        ));
  }
}

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // child: FlatButton(
        //     padding: EdgeInsets.all(20),
        //     shape:
        //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        //     color: Color(0xFFadddcf),
        //     onPressed: () {},
        //     child: Row(
        //       children: <Widget>[
        //         SvgPicture.asset("assets/images/user.svg", width: 22),
        //         SizedBox(width: 20),
        //         Expanded(
        //             child: Text(
        //           "My Account",
        //           style: Theme.of(context).textTheme.bodyText1,
        //         )),
        //         Icon(Icons.arrow_forward_ios_outlined)
        //       ],
        //     ),
        //     )
        child: Column(children: [
          SingleChildScrollView(
              child: Container(
            child: Text(
              'Name',
              style:
                  TextStyle(
                  color: Colors.black, 
                  fontWeight: FontWeight.w700,
                  ),
            ),
          ))
        ]));
  }
}

class SignOut extends StatefulWidget {
  @override
  _SignOutState createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  bool _isLoggedIn = false;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  logout() {
    firebaseAuth.signOut();
    setState(() {
      _isLoggedIn = false;
    });
    print('logged out!');
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<AuthService>(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: FlatButton(
            padding: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Color(0xFFadddcf),
            onPressed: () async{
              await loginProvider.logout();
              Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Row(
              children: <Widget>[
                SvgPicture.asset("assets/images/settings.svg", width: 22),
                SizedBox(width: 20),
                Expanded(
                    child: Text(
                  "Sign Out",
                  style: Theme.of(context).textTheme.bodyText1,
                )),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            )));
  }
}
