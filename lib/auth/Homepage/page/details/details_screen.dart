import 'package:flutter/material.dart';
import 'package:shop/auth/Homepage/constants.dart';
import 'package:shop/auth/Homepage/products.dart';

class DetailsScreen extends StatefulWidget {
  final Product? product;
  const DetailsScreen({super.key, this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text("Details"),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    widget.product!.title,
                    style: const TextStyle(color: kTextColor, fontSize: 40),
                  ),
                ),
                Image.asset(widget.product!.image),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "Price ${widget.product!.price}\$",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  child: Text(widget.product!.description),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  child: const Text("Add To Card"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
