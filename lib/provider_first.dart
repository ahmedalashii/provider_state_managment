// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String message = "PROVIDER";

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context) => message,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: AppBarTitle()),
          body: HomeContent(),
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<String>(context));
  }
}

class HomeContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: HomeMessage(),
        ),
      ],
    );
  }
}

class HomeMessage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<String>(context),style : TextStyle(fontSize: 26,));
  }
}
