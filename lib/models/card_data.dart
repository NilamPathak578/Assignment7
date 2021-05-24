import 'package:flutter/material.dart';

class CardDetails {
  String title;
  String subtitle;
  IconData icon;

  CardDetails(
      {@required this.title, @required this.subtitle, @required this.icon});
}

List<CardDetails> alldata = [
  CardDetails(
      title: "Mobile", subtitle: "9867345321", icon: Icons.phone_android),
  CardDetails(title: "Phone", subtitle: "071-520231", icon: Icons.phone),
  CardDetails(
      title: "Email", subtitle: "Pathaknilm@gmail.com", icon: Icons.email),
];
