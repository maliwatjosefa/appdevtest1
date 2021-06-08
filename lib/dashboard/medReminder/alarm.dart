import 'package:appdevnursie/dashboard/medReminder/reminder.dart';
import 'package:flutter/material.dart';

class AddAlarm extends StatefulWidget {
  AddAlarm({Key key}) : super(key: key);

  _AddAlarmState createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  TimeOfDay _selectedTime;
  ValueChanged<TimeOfDay> selectTime;

  @override
  void initState() {
    _selectedTime = new TimeOfDay.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xffe6b655),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/alarm_wp.png'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
                child: Column(children: <Widget>[
              SizedBox(
                height: 200.0,
              ),
              new GestureDetector(
                child: Container(
                  color: Colors.black,
                  child: Text(
                    _selectedTime.format(context),
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  _selectTime(context);
                },
              ),
              SizedBox(
                height: 60.0,
              ),
              
              SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 2.0,
                child: Container(
                  color: Colors.black,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 40,
                ),
                title: Text('Alarm Notification',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold, 
                      color: Colors.black)),
              ),
              SizedBox(
                height: 2.0,
                child: Container(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 90.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Material(
                    color: Color(0xff000000),
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MedReminder()));
                        
                        _showAlertDialog();
                      },
                      child: Text("Save",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    )),
              ),
            ])),
          ),
        ));
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _selectedTime);
    setState(() {
      _selectedTime = picked;
    });
  }

  void _showAlertDialog()
  {
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context)
          {
              return AlertDialog(
                
                content: new Text('Reminder set at \n\n$_selectedTime'),
                actions: <Widget>[
                  new FlatButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: new Text('OK')
                  )
                ],
              );
          }
      );
  }
}
