import 'package:appdevnursie/dashboard/homeremedy/remedies.dart';
import 'package:flutter/material.dart';

class CoughRemedy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: size.height * 0.32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(27),
                    bottomRight: Radius.circular(27)),
                color: Color(0xffadddce),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/cough4.png',
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
                Text("Cough",
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.w900)),
                SizedBox(height: 10),
                SizedBox(
                  width: size.width * 0.7,
                  child: Text(
                    "A cough is a reflex action that clears your airway of irritants and mucus. It is also a rapid expulsion of air from the lungs.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.05,
                  height: size.height * 0.02,
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
                              image: AssetImage('assets/images/cough2.png'),
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
                  "You can treat coughs with a number of over-the-counter (OTC) medications. Bacterial infections will require antibiotics. Along with medication treatment, you can ask your doctor about other options to help your cough.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  "It can be helpful to treat cough at home by:",
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
                  " - mixing up and drinking 2 teaspoons of honey with herbal tea or warm water and lemon",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Text(
                  " - drinking fluids for hydration and to boost your immune system",
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
                          image: AssetImage('assets/images/cough3.png'),
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
                  "Here are some tips that can help prevent cough:",
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
                  " - Clean the common areas of your home, work, or school frequently. This is especially important for countertops, toys, or mobile phones.",
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
