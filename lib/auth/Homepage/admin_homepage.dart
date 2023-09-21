import 'package:flutter/material.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text("Admin Page")),
          drawer: Drawer(),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text("View Products")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Add Product")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Update Product")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Delete Product")),
              ],
            ),
          )),
    );
  }
}
