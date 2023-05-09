import 'package:flutter/material.dart';

class HalHWICliprrect extends StatelessWidget {
  const HalHWICliprrect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_circle_left, color: Colors.blue),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child:
                  const Image(image: AssetImage('assets/images/profil.png'))),
        ),
      ),
    );
  }
}
