import 'package:appdevnursie/dashboard/journal/database.dart';
import 'package:appdevnursie/dashboard/journal/journal.dart';
import 'package:appdevnursie/dashboard/journal/pain-input.dart';
import 'package:appdevnursie/dashboard/journal/post-list.dart';
import 'package:appdevnursie/dashboard/journal/post.dart';
import 'package:flutter/material.dart';

class StomachachePage extends StatelessWidget {
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

  void postForehead() {
    var post =
        new Post("HEADACHE", "Part: Forehead", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postVomit() {
    var post = new Post("STOMACHACHE", "Vomit", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postNausea() {
    var post = new Post("STOMACHACHE", "Nausea", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postDiarrhea() {
    var post =
        new Post("STOMACHACHE", "Diarrhea", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postCramps() {
    var post = new Post("STOMACHACHE", "Cramps", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postBloating() {
    var post =
        new Post("STOMACHACHE", "Bloating", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postAppetite() {
    var post =
        new Post("STOMACHACHE", "Appetite", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void newPost(String text) {
    var post = new Post("HEADACHE", text, new DateTime.now().toString());
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
      backgroundColor: Color(0xffe7ecf0),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          //child: ConstrainedBox(
          //  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            //height: 795,
            child: Stack(
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image:
                                  AssetImage('assets/images/upperPart.png')))),
                ),
                new Container(
                    height: size.height * .3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage(
                                'assets/images/stomachacheHeader.png')))),
                new Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: IconButton(
                      alignment: Alignment.topLeft,
                      icon: Icon(Icons.arrow_back_rounded),
                      onPressed: this.backJournal),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 205),
                  child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image:
                                  AssetImage('assets/images/pageInfo.png')))),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 375),
                  child: Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image: AssetImage('assets/images/tape.png')))),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 600),
                  child: Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image: AssetImage(
                                  'assets/images/bottomDesign.png')))),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 750),
                  child: Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image: AssetImage('assets/images/tape.png')))),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 1130),
                  child: Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image: AssetImage('assets/images/tape.png')))),
                ),
                new SafeArea(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 63, 20, 0),
                        child: Column(children: <Widget>[
                          new Container(
                              //height: 713,
                              //margin: EdgeInsets.only(bottom: 5),
                              child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text.rich(
                                        TextSpan(
                                          text: "Stomachache",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: TextStyle(fontSize: 40)),
                                  ]),
                              new Container(
                                padding: EdgeInsets.fromLTRB(36, 120, 36, 1),
                                child: Text(
                                  "Stomachache is pain that occurs between the chest and pelvic regions. It can be crampy, achy, dull, intermittent or sharp. It’s also called an abdominal pain.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(20, 28, 20, 0),
                                  child: Card(
                                      color: Color(0xffe7ecf0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      elevation: 4,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 10, 10, 10),
                                            child: Center(
                                              child: Text(
                                                "Which part of your stomach is aching?",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              height: size.height * .2,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      image: AssetImage(
                                                          'assets/images/stomach2.png')))),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 15),
                                            child:
                                                TextInputWidget(this.newPost),
                                          )
                                        ],
                                      ))
                                  //child: TextInputWidget(this.newPost)
                                  ),
                              Container(
                                  margin: EdgeInsets.only(top: 21),
                                  child: Card(
                                      color: Color(0xffe7ecf0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      elevation: 4,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Center(
                                              child: Text(
                                                "Click on the buttons that are applicable.",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 23, 10, 0),
                                              child: Row(children: <Widget>[
                                                ClipRect(
                                                    child: Container(
                                                  width: 105.0,
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/vomit.png'))),
                                                  child: TextButton(
                                                    //padding: EdgeInsets.all(0.0),
                                                    onPressed: this.postVomit,
                                                    child: Container(),
                                                  ),
                                                )),
                                                ClipRect(
                                                    child: Container(
                                                  width: 105.0,
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/nausea.png'))),
                                                  child: TextButton(
                                                    //padding:EdgeInsets.all(0.0),
                                                    onPressed: this.postNausea,
                                                    child: Container(),
                                                  ),
                                                )),
                                                ClipRect(
                                                    child: Container(
                                                  width: 105.0,
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/diarrhea.png'))),
                                                  child: TextButton(
                                                    //padding:EdgeInsets.all(0.0),
                                                    onPressed:
                                                        this.postDiarrhea,
                                                    child: Container(),
                                                  ),
                                                )),
                                              ])),
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 5, 10, 10),
                                              child: Row(children: <Widget>[
                                                ClipRect(
                                                    child: Container(
                                                  width: 105.0,
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/cramps.png'))),
                                                  child: TextButton(
                                                    onPressed: this.postCramps,
                                                    child: Container(),
                                                  ),
                                                )),
                                                ClipRect(
                                                    child: Container(
                                                  width: 105.0,
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/bloating.png'))),
                                                  child: TextButton(
                                                    onPressed:
                                                        this.postBloating,
                                                    child: Container(),
                                                  ),
                                                )),
                                                ClipRect(
                                                    child: Container(
                                                  width: 105.0,
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/appetite.png'))),
                                                  child: TextButton(
                                                    onPressed:
                                                        this.postAppetite,
                                                    child: Container(),
                                                  ),
                                                ))
                                              ])),
                                        ],
                                      ))), //Applicable Container
                              Container(
                                  padding: EdgeInsets.fromLTRB(20, 28, 20, 0),
                                  child: Card(
                                      color: Color(0xffe7ecf0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      elevation: 4,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 10, 10, 10),
                                            child: Center(
                                              child: Text(
                                                "On a scale of 1-10, how would you rate your pain?",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              height: size.height * .2,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      image: AssetImage(
                                                          'assets/images/painscale.png')))),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 15),
                                            child:
                                                TextInputWidget(this.newPost),
                                          )
                                        ],
                                      ))
                                  //child: TextInputWidget(this.newPost)
                                  )
                            ],
                          )), //Safe Area Container
                        ]))),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.width * 0.33,
              child: PostList(this.posts))
        ],
      )
          //)
          ),
    );
  }
}