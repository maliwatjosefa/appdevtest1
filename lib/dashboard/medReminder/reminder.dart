import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:appdevnursie/dashboard/medReminder/alarm.dart';
import 'package:appdevnursie/services2.dart/homepage.dart';
import 'package:appdevnursie/screens/dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class MedReminder extends StatefulWidget {
  @override
  _MedReminderState createState() => _MedReminderState();
}

class _MedReminderState extends State<MedReminder> {

  int index = 0;

  Widget addMedicine(){
    return Container(
      child: FloatingActionButton(
          onPressed: (){
            showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                      title: Text('Add medicine name'),
                      content: TextField(
                        onChanged: (String value) {
                          medicine = value;
                        },
                      ),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            createMed();
                            Navigator.of(context).pop();
                          },
                          child: Text('Add',
                            style: TextStyle(
                              fontSize: 15
                            ),),
                        ),
                      ],
                    );
                  });
            setState(() {
              index = index + 1;
            });
          },
        backgroundColor: Colors.white,    
        heroTag: 'add',
        elevation: 9.0,
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }

  Widget addAlarm(){
    return Container(
      child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => AddAlarm()));
            setState(() {
              index = index + 1;
            });
          },
        backgroundColor: Colors.white,
        heroTag: 'alarm',
        elevation: 9.0,
        child: Icon(Icons.alarm,color: Colors.black,),
      ),
    );
  }

  Widget backHome(){
    return Container(
      child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => Dashboard()));
            setState(() {
              index = index + 1;
            });
          },
        backgroundColor: Colors.white,
        focusColor: Colors.yellow,
        heroTag: 'home',
        elevation: 9.0,
        child: Icon(Icons.menu_open,color: Colors.black,),
      ),
    );
  }


  String medicine = "";

  createMed() {
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("MyReminders").doc(medicine);

    Map<String, String> todos = {"Medicine": medicine};

    documentReference.set(todos).whenComplete(() {
      print('$medicine created');
    });
  }

  deleteMed(item) {
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("MyReminders").doc(item);

    documentReference.delete().whenComplete(() {
      print('$item deleted');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: AnimatedFloatingActionButton(
        colorEndAnimation: Colors.black,
        colorStartAnimation: Colors.black,
        animatedIconData: AnimatedIcons.menu_home,
        fabButtons: <Widget>[
          addMedicine(),
          addAlarm(),
          backHome(),
        ],
      ),
        
            
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/reminder_LOGO.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              children: [
                Text('', style: TextStyle(fontSize: 190)),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('MyReminders')
                      .snapshots(),
                  builder: (context, snapshots) {
                    if(snapshots.data == null) return CircularProgressIndicator();
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshots.data.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot documentSnapshot =
                              snapshots.data.docs[index];
                          return Dismissible(
                              onDismissed: (direction) {
                                deleteMed(documentSnapshot['Medicine']);
                              },
                              key: Key(documentSnapshot['Medicine']),
                              child: Card(
                                elevation: 4,
                                margin: EdgeInsets.only(
                                    left: 25, right: 25, bottom: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ListTile(
                                  title: Text(documentSnapshot['Medicine']),
                                  trailing: IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      deleteMed(documentSnapshot['Medicine']);
                                    },
                                  ),
                                ),
                              ));
                        });
                  },
                ),
              ]),
          ),
        ),
      ),
    );
  }
}
