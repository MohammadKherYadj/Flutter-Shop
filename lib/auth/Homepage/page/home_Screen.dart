import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  TabController? tabController;

  @override
  void initState() {
    //tabController = TabController(length: 4, vsync: this.t);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 4, child: Scaffold(body: Body(), appBar: BuildAppBar())));
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      bottom: TabBar(
          labelColor: Colors.black,
          isScrollable: true,
          physics: const BouncingScrollPhysics(),
          onTap: (value) {
            print(value);
          },
          tabs: const [
            Tab(child: Text("lap")),
            Tab(child: Text("Mobile")),
            Tab(child: Text("speacker")),
            Tab(child: Text("computer"))
          ]),
      elevation: 2,
      centerTitle: true,
      title: const Text("Products",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20)),
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
