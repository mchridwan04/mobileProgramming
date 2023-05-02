import 'package:flutter/material.dart';

class HalHWIExpanded extends StatelessWidget {
  const HalHWIExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Icons.arrow_circle_left, color: Colors.blue)),
        title: const Text('Expanded', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.deepPurple,
          ),
          Expanded(child: Container(
            color: Colors.green,
            )
          )
        ],
      ),
    );
  }
}