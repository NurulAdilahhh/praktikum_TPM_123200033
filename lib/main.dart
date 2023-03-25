import 'package:flutter/material.dart';
import 'package:nuruladilah_123200033_kuistpm/halaman_utama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disease',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home:  HalamanUtama(),
      // debugShowCheckedModeBanner: false,
    );
  }
}

