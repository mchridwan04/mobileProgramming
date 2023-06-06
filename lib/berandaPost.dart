import 'package:flutter/material.dart';

class berandaPost extends StatelessWidget {
  final String labelPost;
  berandaPost({required this.labelPost});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 150,
        child: Image.network(
          (labelPost),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
