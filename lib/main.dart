import 'package:firstapp/pages/choose_location.dart';
import 'package:firstapp/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const Loading(),
    '/home': (context) => const Home(),
    '/location': (context) => const ChooseLocation(),

  },
));


