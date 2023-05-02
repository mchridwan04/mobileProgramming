import 'package:flutter/material.dart';

class HalHWIListview extends StatelessWidget {
  const HalHWIListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(), 
          icon: const Icon(
            Icons.arrow_circle_left, 
            color: Colors.blue,
          )
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.deepPurple[900],
          ),
          Container(
            height: 100,
            color: Colors.deepPurple[800],
          ),
          Container(
            height: 100,
            color: Colors.deepPurple[700],
          ),
          Container(
            height: 100,
            color: Colors.deepPurple[600],
          ),
          Container(
            height: 100,
            color: Colors.deepPurple[500],
          ),
          Container(
            height: 100,
            color: Colors.deepPurple[400],
          ),
          Container(
            height: 100,
            color: Colors.deepPurple[300],
          ),
          Container(
            height: 100,
            color: Colors.deepPurple[200],
          ),
          Container(
            height: 100,
            color: Colors.deepPurple[100],
          ),
        ],
      ),
    );
  }
}