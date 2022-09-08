import 'package:flutter/material.dart';
import 'package:flutter_week14/gridview_card_page.dart';
import 'package:flutter_week14/gridview_page.dart';
import 'package:flutter_week14/home.dart';

import 'list_tile_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //1.constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}