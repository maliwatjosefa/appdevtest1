import 'package:appdevnursie/dashboard/journal/colds.dart';
import 'package:appdevnursie/dashboard/journal/cough.dart';
import 'package:appdevnursie/dashboard/journal/fever-page.dart';
import 'package:appdevnursie/dashboard/journal/headache.dart';
import 'package:appdevnursie/dashboard/journal/stomachache.dart';
import 'package:flutter/material.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  void clickFever() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FeverPage()));
  }

  void clickHeadache() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HeadachePage()));
  }

  void clickStomachache() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StomachachePage()));
  }

  void clickCough() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughPage()));
  }

  void clickColds() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ColdsPage()));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xffe7ecf0),
        //backgroundColor: Color(0xFFfffbe8),
        //appBar: AppBar(centerTitle: true, title: Text("Journal", style: TextStyle(fontSize: 25, fontFamily: 'Casanova'))),
        body: Stack(
          children: <Widget>[
            Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: AssetImage('assets/images/journalHeader.png')))),
            /*Padding(
              padding: EdgeInsets.only(top: 30),
              child: IconButton(
                  alignment: Alignment.topLeft,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  }),
            ),*/
            Padding(
              padding: EdgeInsets.only(top: 600),
              child: Container(
                  height: size.height * .3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: AssetImage('assets/images/lower.png')))),
            ),
            SafeArea(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 55, 20, 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 85,
                            margin: EdgeInsets.only(bottom: 70),
                            child: Column(children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text.rich(
                                        TextSpan(
                                          text: "Journal",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            //fontFamily: "Caveat"
                                          ),
                                        ),
                                        style: TextStyle(fontSize: 50)),
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("      Today, I had...",
                                        style: TextStyle(
                                          fontSize: 20,
                                          //fontFamily: "Roboto Mono"
                                        )),
                                  ])
                            ])),
                        Expanded(
                            child: GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          primary: false,
                          children: <Widget>[
                            ClipRect(
                                child: Container(
                              //transformAlignment: Alignment(5, -5),
                              width: 125.0,
                              height: 125.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/fever.png'))),
                              child: TextButton(
                                //padding: EdgeInsets.all(0.0),
                                onPressed: this.clickFever,
                                //  () {
                                //debugPrint('Fever Button');
                                //},
                                child: Container(),
                              ),
                            )),
                            ClipRect(
                                child: Container(
                              //transformAlignment: Alignment(5, -5),
                              width: 125.0,
                              height: 125.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/headache.png'))),
                              child: TextButton(
                                //padding: EdgeInsets.all(0.0),
                                onPressed: this.clickHeadache,
                                //  () {
                                //debugPrint('Fever Button');
                                //},
                                child: Container(),
                              ),
                            )),
                            ClipRect(
                                child: Container(
                              //transformAlignment: Alignment(5, -5),
                              width: 125.0,
                              height: 125.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/stomach.png'))),
                              child: TextButton(
                                //padding: EdgeInsets.all(0.0),
                                onPressed: this.clickStomachache,
                                //  () {
                                //debugPrint('Fever Button');
                                //},
                                child: Container(),
                              ),
                            )),
                            ClipRect(
                                child: Container(
                              //transformAlignment: Alignment(5, -5),
                              width: 125.0,
                              height: 125.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/cough.png'))),
                              child: TextButton(
                                //padding: EdgeInsets.all(0.0),
                                onPressed: this.clickCough,
                                //  () {
                                //debugPrint('Fever Button');
                                //},
                                child: Container(),
                              ),
                            )),
                            ClipRect(
                                child: Container(
                              //transformAlignment: Alignment(5, -5),
                              width: 125.0,
                              height: 125.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/colds.png'))),
                              child: TextButton(
                                //padding: EdgeInsets.all(0.0),
                                onPressed: this.clickColds,
                                //  () {
                                //debugPrint('Fever Button');
                                //},
                                child: Container(),
                              ),
                            )),
                            ClipRect(
                                child: Container(
                              //transformAlignment: Alignment(5, -5),
                              width: 125.0,
                              height: 125.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/taste.png'))),
                              child: TextButton(
                                //padding: EdgeInsets.all(0.0),
                                onPressed: null,
                                //  () {
                                //debugPrint('Fever Button');
                                //},
                                child: Container(),
                              ),
                            ))
                          ],
                          crossAxisCount: 2,
                        )),
                      ],
                    )))
          ],
        ));
  }
}