import 'package:flutter/material.dart';

class HalHWICliprrect extends StatelessWidget {
  const HalHWICliprrect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(), 
          icon: const Icon(
            Icons.arrow_circle_left,
            color: Colors.blue
          ),
        ),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple,
          )
        ),
      ),
    );
  }
}