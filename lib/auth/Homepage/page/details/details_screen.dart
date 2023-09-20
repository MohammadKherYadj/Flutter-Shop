import 'package:flutter/material.dart';
import 'package:shop/auth/Homepage/constants.dart';
import 'package:shop/auth/Homepage/products.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  const DetailsScreen({super.key, this.product});

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
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  product!.title,
                  style: const TextStyle(color: kTextColor, fontSize: 40),
                ),
              ),
              Image.asset(product!.image),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Price ${product!.price}\$",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text("Add To Card"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
