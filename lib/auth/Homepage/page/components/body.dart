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
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text("Products",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
        ),
        Categories(),
        Expanded(
            child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DetailsScreen(
                       
                       
                    ))));
              },
              product: products[index]),
        ))
      ],
    );
  }
}
