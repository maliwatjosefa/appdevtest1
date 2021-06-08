import 'package:appdevnursie/dashboard/medReminder/reminder.dart';
import 'package:appdevnursie/dashboard/homeremedy/remedies.dart';
import 'package:appdevnursie/dashboard/user-profile.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'dart:io';


class Dashboard extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/dashboard_wp.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 190.0),
              CarouselSlider(
                items: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (ctx) => JournalPage()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/jcard.png'),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => MedReminder()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/medcard.png'),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => RemediesPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/homecard.png'),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (ctx) => Reports()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/reportcard.png'),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => UserProfile()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/usercard.png'),
                        ),
                      ),
                    ),
                  )
                ],
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  aspectRatio: 20,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.7,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Exit(),
            ],
          ),
        ),
      ),
    ));
  }
}

class Exit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 55),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 305, right: 10),
        child: FloatingActionButton(
          onPressed: () => exit(0),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          tooltip: 'Close app',
          child: new Icon(Icons.exit_to_app_outlined),
        ),
      ),
    );
  }
}
