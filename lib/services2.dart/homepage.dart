import 'dart:async';

import 'package:appdevnursie/services2.dart/services.dart';
//import 'package:appdevnursie/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(icon:Icon(Icons.exit_to_app), 
          onPressed: () async => await loginProvider.logout(),
          )
        ],
      ),     
    );
  }
}
