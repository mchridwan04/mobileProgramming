import 'package:flutter/material.dart';

class HalHWIContainer extends StatelessWidget {
  const HalHWIContainer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: const Icon(Icons.arrow_circle_left, color: Colors.blue)),
        title: const Text('Container', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
      ),
      body: Container(
        color: Colors.deepPurple,
      ),
    );
  }
}