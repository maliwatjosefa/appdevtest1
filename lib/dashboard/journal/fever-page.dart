import 'package:appdevnursie/dashboard/journal/database.dart';
import 'package:appdevnursie/dashboard/journal/journal.dart';
import 'package:appdevnursie/dashboard/journal/pain-input.dart';
import 'package:appdevnursie/dashboard/journal/post-list.dart';
import 'package:appdevnursie/dashboard/journal/post.dart';
import 'package:flutter/material.dart';

class FeverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Post> posts = [];

  void newPost(String text) {
    var post = new Post("FEVER", text, new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void backJournal() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => JournalPage()));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffe7ecf0),
      //backgroundColor: Color(0xFFfffbe8),
      body: SingleChildScrollView(
          child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Stack(
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(top: 120),
                    child: Container(
                        height: size.height * .3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage(
                                    'assets/images/upperPart.png')))),
                  ),
                  new Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image: AssetImage(
                                  'assets/images/feverHeader.png')))),
                  new Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: IconButton(
                        alignment: Alignment.topLeft,
                        icon: Icon(Icons.arrow_back_rounded),
                        onPressed: this.backJournal),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 225),
                    child: Container(
                        height: size.height * .3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image:
                                    AssetImage('assets/images/pageInfo.png')))),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 420),
                    child: Container(
                        height: size.height * .3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage('assets/images/tape2.png')))),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 620),
                    child: Container(
                        height: size.height * .3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage(
                                    'assets/images/bottomDesign.png')))),
                  ),
                  new SafeArea(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 70, 20, 20),
                    child: Column(
                      children: <Widget>[
                        new Container(
                            //height: 150,
                            margin: EdgeInsets.only(bottom: 60),
                            child: Column(
                              children: <Widget>[
                                new Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text.rich(
                                          TextSpan(
                                            text: "  Fever",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              //fontFamily: "Caveat",
                                            ),
                                          ),
                                          style: TextStyle(fontSize: 50)),
                                    ]),
                                new Container(
                                  padding: EdgeInsets.fromLTRB(20, 120, 40, 20),
                                  child: Text(
                                    "A fever is a body temperature that is higher than normal. The average body temperature is 37°C (98.6°F) but normal body temperature can range between 36.1°C (97°F) and 37.2°C (99°F) or more.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      fontSize: 18,
                                      //fontFamily: "Roboto Mono",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                new Container(
                                    padding: EdgeInsets.only(
                                        left: 20,
                                        top: 10,
                                        right: 20,
                                        bottom: 0),
                                    child: TextInputWidget(this.newPost)),
                                //Container (child: PostList(this.posts))
                              ],
                            )),
                        new Expanded(child: PostList(this.posts))
                      ],
                    ),
                  )),
                ],
              ))),
    );
  }
}