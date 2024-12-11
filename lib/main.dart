import 'package:flutter/material.dart';
import 'package:imagefeacthing/controller/imagecontroller.dart';
import 'package:imagefeacthing/view/homescreen/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Imagecontroller(),
      child: MaterialApp(
        home: Homepage(),
      ),
    );
  }
}
