// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:notifymeee/screens/sign_up.dart';

void main() => runApp(NotifyMeee());

class NotifyMeee extends StatelessWidget {
  const NotifyMeee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NotifyMeee",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignUpPage(),
    );
  }
}
