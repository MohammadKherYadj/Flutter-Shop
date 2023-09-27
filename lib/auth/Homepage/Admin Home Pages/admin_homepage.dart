import 'package:flutter/material.dart';
import 'package:shop/auth/Homepage/Admin%20Home%20Pages/add_product.dart';
import 'package:shop/auth/Homepage/Admin%20Home%20Pages/delete_prodect.dart';
import 'package:shop/auth/Homepage/Admin%20Home%20Pages/edit_product.dart';
import 'package:shop/auth/Homepage/Admin%20Home%20Pages/view_products.dart';

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
          drawer: const Drawer(
            child: Column(children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Mohammad"),
                  accountEmail: Text("Mohammad@admin.com"))
            ]),
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewProducts()));
                      },
                      child: const Text("View Products")),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddProduct()));
                      },
                      child: const Text("Add Product")),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditProduct()));
                      },
                      child: const Text("Edit Product")),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DeleteProduct()));
                      },
                      child: const Text("Delete Product")),
                ),
              ],
            ),
          )),
    );
  }
}
