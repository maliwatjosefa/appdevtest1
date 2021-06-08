
import 'package:appdevnursie/screens/login.dart';
//import 'package:appdevnursie/screens/dashboard.dart';
import 'package:appdevnursie/services2.dart/homepage.dart';
import 'package:appdevnursie/services2.dart/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  final Function toggleScreen;

  const Register({Key key, this.toggleScreen}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<AuthService>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/signup_wp.png'),
                  fit: BoxFit.cover),
            ),

            child: Form(
                key: _formkey,
                child: Column(children: [
                  SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(36.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            
                            SizedBox(height: 150),

                            TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      50.0, 15.0, 20.0, 15.0),
                                  hintText: "Name",
                                  prefixIcon: Icon(Icons.account_circle),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32))),
                                  validator: (name) {
                                  if (name.isEmpty) {
                                    return 'Please enter name.';
                                  }
                                  return null;
                                },
                                //onSaved: (name) => user.name = name,
                            ),
                            SizedBox(height: 15),
                            TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      50.0, 15.0, 20.0, 15.0),
                                  hintText: "Birthday",
                                  prefixIcon: Icon(Icons.cake),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32))),
                                  validator: (bday) {
                                  if (bday.isEmpty) {
                                    return 'Please enter birthday.';
                                  }
                                  return null;
                                },
                            ),
                            SizedBox(height: 15),
                            TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      50.0, 15.0, 20.0, 15.0),
                                  hintText: "Age",
                                  prefixIcon: Icon(Icons.child_care),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32))),
                                  validator: (age) {
                                  if (age.isEmpty) {
                                    return 'Please enter age.';
                                  }
                                  return null;
                                },
                            ),
                            SizedBox(height: 15),
                            TextFormField(
                              controller: _emailController,
                              validator: (val) => val.isNotEmpty
                                  ? null
                                  : "Please enter an email.",
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      50.0, 15.0, 20.0, 15.0),
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.mail),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32))),
                            ),
                            SizedBox(height: 15),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              validator: (val) => val.length < 6
                                  ? "Please enter more than 6 characters."
                                  : null,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      50.0, 15.0, 20.0, 15.0),
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.vpn_key),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32))),
                            ),

                            SizedBox(height: 30),
                            MaterialButton(
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  print("Email: ${_emailController.text}");
                                  print("Email: ${_passwordController.text}");
                                  await loginProvider.register(

                                      _emailController.text.trim(),
                                      _passwordController.text.trim());
                                }
                                // Navigator.push(
                                //                 context,
                                //                 MaterialPageRoute(
                                //                     builder: (ctx) =>
                                //                         Dashboard()));
                              },
                              height: 50,
                              minWidth: loginProvider.isLoading
                                  ? null
                                  : double.infinity,
                              color: Color(0xffadddce),
                              textColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: loginProvider.isLoading
                                  ? CircularProgressIndicator(
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                        Colors.black,
                                      ),
                                    )
                                  : Text("Sign up",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?"),
                                SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (ctx) =>
                                                        Login()));
                                  },
                                  //=> widget.toggleScreen(),
                                  child: Text(
                                    "Log in",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.underline),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            if (loginProvider.errorMessage != null)
                              Container(
                                  padding: EdgeInsets.zero,
                                  color: Colors.amberAccent,
                                  child: ListTile(
                                      title: Text(loginProvider.errorMessage),
                                      leading: Icon(Icons.error),
                                      trailing: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () =>
                                            loginProvider.setMessage(null),
                                      )))
                          ],
                        ),
                      ),
                    ),
                  )
                ])))); //);//);
  }
}
