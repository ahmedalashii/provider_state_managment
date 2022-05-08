// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MessageProvider>(
      create: (context) => MessageProvider(),
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
    return Text(Provider.of<MessageProvider>(context).message);
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextField(
          onChanged :(value){
            Provider.of<MessageProvider>(context,listen:false).changeMessage(value);
          },
        ),
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
    return Text(Provider.of<MessageProvider>(context).message,
        style: TextStyle(
          fontSize: 26,
        ));
  }
}

class MessageProvider extends ChangeNotifier {
  String message = "MESSAGE";

  void changeMessage(String message) {
    this.message = message;
    notifyListeners();
  }
}
