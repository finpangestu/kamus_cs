import 'package:flutter/material.dart';
import 'package:kamus_cs/views/list_kamus_cs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListKamusCS(),
    );
  }
}
