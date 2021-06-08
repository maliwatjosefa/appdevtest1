import 'package:appdevnursie/dashboard/homeremedy/remedies.dart';
import 'package:flutter/material.dart';

class TasteRemedy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: size.height * 0.36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(27),
                  bottomRight: Radius.circular(27)),
              color: Color(0xffadddce),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/taste4.png',
                  ),
                  fit: BoxFit.none,
                  alignment: Alignment.centerRight),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: IconButton(
                alignment: Alignment.topLeft,
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RemediesPage()));
                }),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.03),
                Text("Loss of Sense of Taste",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w900)),
                SizedBox(height: 10),
                SizedBox(
                  width: size.width * 0.7,
                  child: Text(
                    "Loss of sense of taste or impaired taste means that your sense of taste is not functioning properly. Impaired taste can refer to the absence of taste. ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.05,
                  height: size.height * 0.01,
                ),
                Wrap(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xffadddce),
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -20)
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/firstaid.png'),
                            fit: BoxFit.none,
                            alignment: Alignment.centerLeft),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/taste3.png'),
                              fit: BoxFit.none,
                              alignment: Alignment.centerRight),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: size.width * 0.05,
                  height: size.height * 0.01,
                ),
                Text(
                  "In many cases, a person can take small steps at home to help improve their sense of taste, including:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - improving dental hygiene by brushing, flossing, and using a medicated mouthwash daily",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - getting enough zinc through normal and varied diet",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - preparing foods that have a variety of textures or colors",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - using spices or aromatic herbs, but don't add more sugar or salt to your food",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(width: size.width * 0.08),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xffadddce),
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 23,
                          spreadRadius: -20)
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/fever_prevent.png'),
                        fit: BoxFit.none,
                        alignment: Alignment.centerLeft),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/taste2.png'),
                          fit: BoxFit.none,
                          alignment: Alignment.centerRight),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.05,
                  height: size.height * 0.01,
                ),
                
                Text(
                  " - Fill half your plate with fruits and vegetables and a quarter each with protein and high-fiber carbohydrates.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - Seek out high-fiber carbs such as whole grains including brown rice, oatmeals, nuts, and beans. Not only are they nutritious, but they also can be high-texture, which appeals to a sense you haven’t lost.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - Don't skip meals.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
