import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop/auth/Homepage/page/details/details_screen.dart';
import 'package:shop/auth/Homepage/products.dart';

import 'components/body.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 5,
            child: Scaffold(body: const Body(), appBar: buildAppBar())));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      bottom: TabBar(
          labelColor: Colors.black,
          isScrollable: true,
          physics: const BouncingScrollPhysics(),
          onTap: (value) {
            if (kDebugMode) {
              print("TabBar $value");
            }
          },
          tabs: const [
            Tab(child: Text("Laptop")),
            Tab(child: Text("Mobile")),
            Tab(child: Text("Specker")),
            Tab(child: Text("Computer")),
            Tab(child: Text("AirBads")),
          ]),
      elevation: 2,
      centerTitle: true,
      title: const Text("Products",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20)),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          },
          icon: const Icon(Icons.search),
          color: Colors.black,
        ),
      ],
    );
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Product> filterNames =
        products.where((element) => element.title.contains(query)).toList();
    return ListView.builder(
        itemCount: query == "" ? products.length : filterNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            product: query == ""
                                ? products[index]
                                : filterNames[index],
                          )),
                );
              },
              leading: query == ""
                  ? Image.asset(products[index].image)
                  : Image.asset(filterNames[index].image),
              title: query == ""
                  ? Text(products[index].title)
                  : Text(filterNames[index].title),
            ),
          );
        });
  }
}
