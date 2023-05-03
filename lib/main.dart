import 'package:flutter/material.dart';
import 'package:portfolio/contacts.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/projects.dart';
import 'about_me.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Soho'),
    initialRoute: '/home',
    debugShowCheckedModeBanner: false,
    routes: {
      '/project': (context) => const MyProject(),
      '/home': (context) => const MyHome(),
      '/about': (context) => const MyApp(),
      '/contact': (context) => const Contacts(),
    },
  ));
}

