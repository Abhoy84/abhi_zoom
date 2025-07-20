import 'package:flutter/material.dart';
import 'package:abhi_zoom/abhi_zoom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AbhiZoom(
            maxScale: 4.0,
            minScale: 1.0,
            child: Image.network(
              'https://picsum.photos/400/400',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
