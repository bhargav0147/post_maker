import 'package:flutter/material.dart';
import 'package:post/Screen/post_screen.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => PostScreen()
    },
  ));
}