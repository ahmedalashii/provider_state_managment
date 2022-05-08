// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String message = "Message";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: AppBarTitle(title: message)),
        body: HomeContent(message: message),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  final String title;

  AppBarTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}

class HomeContent extends StatelessWidget {
  final String message;

  HomeContent({required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: HomeMessage(message: message),
        ),
      ],
    );
  }
}

class HomeMessage extends StatelessWidget {
  final String message;

  HomeMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
