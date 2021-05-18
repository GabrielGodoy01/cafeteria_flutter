import 'package:flutter/material.dart';

import 'home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cafeteria - Flutter App",
      theme: ThemeData(fontFamily: 'Varela'),
      home: HomePage(),
    );
  }
}
