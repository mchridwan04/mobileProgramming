import 'package:flutter/material.dart';
import 'package:mandiri1/berandaPost.dart';

class beranda extends StatelessWidget {
  final List _posts = [
    'https://images.unsplash.com/photo-1682687220247-9f786e34d472?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMjV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://plus.unsplash.com/premium_photo-1685053085344-c6171e7ddafa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=928&q=80',
    'https://images.unsplash.com/photo-1686007579079-550a74a0decb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1682687220247-9f786e34d472?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMjV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://plus.unsplash.com/premium_photo-1685053085344-c6171e7ddafa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=928&q=80',
    'https://images.unsplash.com/photo-1686007579079-550a74a0decb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return berandaPost(labelPost: _posts[index]);
              },
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        child: const Icon(
          Icons.arrow_back_ios_new,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
