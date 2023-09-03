
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: BuildAppBar()
      
        );
        
  }

  AppBar BuildAppBar() {
    return AppBar(
    backgroundColor: Colors.white,
    elevation: 2,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        color: Colors.black,
      ),
    ],
  );
  }
}
