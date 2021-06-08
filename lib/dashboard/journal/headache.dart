import 'package:appdevnursie/dashboard/journal/database.dart';
import 'package:appdevnursie/dashboard/journal/journal.dart';
import 'package:appdevnursie/dashboard/journal/pain-input.dart';
import 'package:appdevnursie/dashboard/journal/post-list.dart';
import 'package:appdevnursie/dashboard/journal/post.dart';
import 'package:flutter/material.dart';

class HeadachePage extends StatelessWidget {
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

  void postNeck() {
    var post = new Post(
        "HEADACHE", "Part: Top/Back of head", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postSide() {
    var post =
        new Post("HEADACHE", "Part: Side", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postSinus() {
    var post =
        new Post("HEADACHE", "Part: Sinus", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postTemples() {
    var post =
        new Post("HEADACHE", "Part: Temples", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postCluster() {
    var post =
        new Post("HEADACHE", "Part: Cluster", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postLight() {
    var post = new Post(
        "HEADACHE", "Sensitivity to Light", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postNausea() {
    var post = new Post("HEADACHE", "Nausea", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postPulsing() {
    var post =
        new Post("HEADACHE", "Pulsing Pain", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postSound() {
    var post = new Post(
        "HEADACHE", "Sensitivity to Sound", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postVomit() {
    var post = new Post("HEADACHE", "Vomiting", new DateTime.now().toString());
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
                                'assets/images/headacheHeader.png')))),
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
                        padding: EdgeInsets.fromLTRB(20, 55, 20, 0),
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
                                          text: "Headache",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: TextStyle(fontSize: 50)),
                                  ]),
                              new Container(
                                padding: EdgeInsets.fromLTRB(43, 110, 40, 1),
                                child: Text(
                                  "Headaches are unpleasant pains in your head that can cause pressure and aching. The pain can range from mild to severe, and they usually occur on both sides of your head.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              new Container(
                                margin: EdgeInsets.only(top: 77),
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
                                              "Which part of your head is aching?",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        new Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 20, 10, 0),
                                            child: Row(children: <Widget>[
                                              ClipRect(
                                                  child: Container(
                                                width: 105.0,
                                                height: 105.0,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/1forehead.png'))),
                                                child: TextButton(
                                                  //padding: EdgeInsets.all(0.0),
                                                  onPressed: this.postForehead,
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
                                                            'assets/images/1temples.png'))),
                                                child: TextButton(
                                                  //padding: EdgeInsets.all(0.0),
                                                  onPressed: this.postTemples,
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
                                                            'assets/images/1neck.png'))),
                                                child: TextButton(
                                                  //padding: EdgeInsets.all(0.0),
                                                  onPressed: this.postNeck,
                                                  child: Container(),
                                                ),
                                              )),
                                            ])),
                                        new Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 10, 15),
                                            child: Row(children: <Widget>[
                                              ClipRect(
                                                  child: Container(
                                                width: 105.0,
                                                height: 105.0,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/1side.png'))),
                                                child: TextButton(
                                                  //padding: EdgeInsets.all(0.0),
                                                  onPressed: this.postSide,
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
                                                            'assets/images/1sinus.png'))),
                                                child: TextButton(
                                                  //padding: EdgeInsets.all(0.0),
                                                  onPressed: this.postSinus,
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
                                                            'assets/images/1cluster.png'))),
                                                child: TextButton(
                                                  //padding: EdgeInsets.all(0.0),
                                                  onPressed: this.postCluster,
                                                  child: Container(),
                                                ),
                                              )),
                                            ])),
                                      ],
                                    )),
                              ), //achingContainer
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
                                                              'assets/images/2light.png'))),
                                                  child: TextButton(
                                                    //padding: EdgeInsets.all(0.0),
                                                    onPressed: this.postLight,
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
                                                              'assets/images/2nausea.png'))),
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
                                                              'assets/images/2pulsing.png'))),
                                                  child: TextButton(
                                                    //padding:EdgeInsets.all(0.0),
                                                    onPressed: this.postPulsing,
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
                                                              'assets/images/2sound.png'))),
                                                  child: TextButton(
                                                    onPressed: this.postSound,
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
                                                              'assets/images/2vomit.png'))),
                                                  child: TextButton(
                                                    onPressed: this.postVomit,
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