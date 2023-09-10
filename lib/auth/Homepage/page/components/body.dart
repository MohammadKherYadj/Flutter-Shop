// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../products.dart';
import '../details/details_screen.dart';
import 'IItem_card.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Categories(),
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
            itemBuilder: (context, index) => ItemCard(
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const DetailsScreen())));
                },
                product: products[index]),
          ),
        ))
      ],
    );
  }
}
