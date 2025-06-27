import 'package:flutter/material.dart';
import 'package:flutter_application_1/State_Provider/text.dart';

class Counterapp extends StatelessWidget {
  const Counterapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  title: Text('asif'),
),
backgroundColor: Colors.blue,
body: Center(
  child: Column(
    children: [
      CountText(),
     CounterButton()
    ]
  ),
),
    );
  }
}