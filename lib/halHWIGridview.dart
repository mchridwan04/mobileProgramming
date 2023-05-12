import 'package:flutter/material.dart';

class HalHWIGridview extends StatelessWidget {
  const HalHWIGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_circle_left, color: Colors.blue),
        ),
        title: const Text(
          'GridView',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50, width: 50, color: Colors.deepPurple),
          ),
        ],
      ),
    );
  }
}
