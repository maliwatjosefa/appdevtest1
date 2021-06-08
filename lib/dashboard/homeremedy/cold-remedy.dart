import 'package:appdevnursie/dashboard/homeremedy/remedies.dart';
import 'package:flutter/material.dart';

class ColdRemedy extends StatelessWidget {
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
                      'assets/images/sneeze.png',
                    ),
                    fit: BoxFit.none,
                    alignment: Alignment.centerRight),
                    
                    ),
                    
          ),
          Padding(
          padding: EdgeInsets.only(top:50),
          child: IconButton(
                  alignment: Alignment.topLeft,
                  icon: Icon(Icons.arrow_back), 
                  onPressed: () {
                     Navigator.push(
        context, MaterialPageRoute(builder: (context) => RemediesPage()));
                  }),),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.03),
                Text("Cold",
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.w900)),
                SizedBox(height: 10),
                SizedBox(
                  width: size.width * 0.7,
                  child: Text(
                    "The common cold is a viral infection of your nose and throat (upper respiratory tract). It is usually harmless, although it might not feel that way. Many types of viruses can cause a common cold.",
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
                              image: AssetImage('assets/images/colds2.png'),
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
                  "For adults, it can be helpful to treat colds by:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                
                SizedBox(height: 10),
                Text(
                  " - gargling salt and water that can help soothe a scratchy throat that causes you to cough. Mixing 1/4 to 1/2 teaspoon of salt with 8 ounces of warm water can help to relieve irritation",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                
                SizedBox(height: 10),
                Text(
                  " - adding fresh lemon juice to hot tea with honey may reduce phlegm when you’re sick",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - drinking plenty of fluids",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - taking over-the-counter medicine for colds",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 16),
                Text(
                  "For children, it can be helpful to treat colds by:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  " - making sure they are drinking regularly. Warm drinks like tea is a big help to ease colds.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                
                SizedBox(height: 10),
                Text(
                  " - gargling salt and water that can help soothe a scratchy throat that causes you to cough. Mixing 1/4 to 1/2 teaspoon of salt with 8 ounces of warm water can help to relieve irritation",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - applying vapor rub before bed that can help open air passages to combat congestion, reduce coughing, and improve sleep",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " -  giving them a warm sponge bath that can also reduce cold symptoms",
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
                          image: AssetImage('assets/images/colds3.png'),
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
                  "Here are some tips that can help prevent colds:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - Wash your hands often, especially before eating, after using the toilet, and after being around large numbers of people.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - Carry hand sanitizer or antibacterial wipes with you. They can come in handy when you don’t have access to soap and water.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - Avoid touching your nose, mouth, or eyes. Doing so makes it easier for viruses and bacteria to enter your body and cause infection.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - Avoid sharing cups, glasses, and eating utensils with other people.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - Drink plenty of fluids.",
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
