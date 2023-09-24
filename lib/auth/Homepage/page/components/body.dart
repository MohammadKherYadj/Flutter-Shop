import 'package:flutter/material.dart';
import '../../products.dart';
import 'IItem_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

List<Product>? mobile, specker, airbods;

class _BodyState extends State<Body> {
  @override
  void initState() {
    mobile =
        products.where((element) => element.categories == "mobile").toList();
    specker =
        products.where((element) => element.categories == "specker").toList();
    airbods =
        products.where((element) => element.categories == "airbods").toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) =>
                    ItemCard(product: products[index]),
              ),
            ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: mobile!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) =>
                    ItemCard(product: mobile![index]),
              ),
            ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: specker!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) =>
                    ItemCard(product: specker![index]),
              ),
            ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) =>
                    ItemCard(product: products[index]),
              ),
            ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: airbods!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) =>
                    ItemCard(product: airbods![index]),
              ),
            ))
          ],
        ),
      ],
    );
  }
}
