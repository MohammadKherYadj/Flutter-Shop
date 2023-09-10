import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(), appBar: BuildAppBar());
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      centerTitle: true,
      title: const Text("Products",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 35)),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: Colors.black,
        ),
      ],
    );
  }
}
