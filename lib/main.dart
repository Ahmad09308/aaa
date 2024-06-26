import 'package:flutter/material.dart';
import 'package:quez2/config/get_it_config.dart';
import 'package:quez2/scren/login.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogInPeg(),
    );
  }
}
