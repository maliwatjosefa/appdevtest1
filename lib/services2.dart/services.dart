import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
//import 'package:appdevnursie/user-data.dart';

class AuthService with ChangeNotifier {
  bool _isLoading = false;
  String _errorMessage;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future register(String email, String password) async {
    //setLoading(true);
    //UserData userData;
    try {
      UserCredential authResult = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    
      User user = authResult.user;
      setLoading(false);
      return user;

    } on SocketException{
        setLoading(false);
        setMessage("No internet.");
    } catch (e) {
        setLoading(false);
        print(e);
        setMessage(e.message);
    }
    notifyListeners();
  }

  Future login(String email, String password) async {
    setLoading(true);
    try {
      UserCredential authResult = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
      User user = authResult.user;
      setLoading(false);
      return user;

    } on SocketException{
        setLoading(false);
        setMessage("No internet.");
    } catch (e) {
        setLoading(false);
        print(e);
        setMessage(e.message);
    }
    notifyListeners();
  }

  Future logout() async {
    await firebaseAuth.signOut();
  }

  void setLoading(val) {
    _isLoading = val;
    notifyListeners();
  }

  void setMessage(message) {
    _errorMessage = message;
    notifyListeners();
  }

  Stream<User> get user => firebaseAuth.
    authStateChanges().map((event) => event);
}