import 'package:appdevnursie/dashboard/journal/database.dart';
import 'package:appdevnursie/dashboard/journal/journal.dart';
import 'package:appdevnursie/dashboard/journal/post-list.dart';
import 'package:appdevnursie/dashboard/journal/post.dart';
import 'package:flutter/material.dart';

class CoughPage extends StatelessWidget {
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

  void postDryCough() {
    var post = new Post("COUGH", "Dry Cough", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postItchyThroat() {
    var post = new Post("COUGH", "Itchy Throat", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void postPhlegm() {
    var post = new Post("COUGH", "Phlegm", new DateTime.now().toString());
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
                            image:
                                AssetImage('assets/images/coughHeader.png')))),
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
                new SafeArea(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 58, 20, 0),
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
                                          text: "Cough",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: TextStyle(fontSize: 50)),
                                  ]),
                              new Container(
                                padding: EdgeInsets.fromLTRB(33, 120, 36, 1),
                                child: Text(
                                  "A cough, also known as tussis, is    a voluntary or involuntary act that clears the throat and breathing passage of foreign particles, microbes, irritants, fluids, and mucus.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
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
                                                              'assets/images/dry-cough.png'))),
                                                  child: TextButton(
                                                    //padding: EdgeInsets.all(0.0),
                                                    onPressed:
                                                        this.postDryCough,
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
                                                              'assets/images/itchy throat.png'))),
                                                  child: TextButton(
                                                    //padding:EdgeInsets.all(0.0),
                                                    onPressed:
                                                        this.postItchyThroat,
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
                                                              'assets/images/-phlegm.png'))),
                                                  child: TextButton(
                                                    //padding:EdgeInsets.all(0.0),
                                                    onPressed: this.postPhlegm,
                                                    child: Container(),
                                                  ),
                                                )),
                                              ])),
                                        ],
                                      ))), //Applicable Container
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