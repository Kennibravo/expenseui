import 'package:flutter/material.dart';

var expenses = [
  {"name": "Groceries", "amount": 500.0},
  {"name": "Online Shopping", "amount": 100.0},
  {"name": "Eating out", "amount": 80.0},
  {"name": "Bills", "amount": 50.0},
  {"name": "Subscriptions", "amount": 100.0},
  {"name": "Fees", "amount": 30.0},
];

List pieColors = [
  Colors.indigo[400],
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];

var primaryColor = const Color(0xFFCADCED);

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: const Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue.withOpacity(.2),
    spreadRadius: 2,
    offset: const Offset(7, 7),
    blurRadius: 20,
  )
];
