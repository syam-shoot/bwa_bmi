import 'package:flutter/material.dart';
import 'package:test_app/height_provider.dart';
import 'package:test_app/home_page.dart';
import 'package:provider/provider.dart';
import 'package:test_app/weight_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<HeightProvider>(
              create: (context) => HeightProvider()),
          ChangeNotifierProvider<WeightProvider>(
              create: (context) => WeightProvider())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ));
  }
}
