import 'package:flutter/material.dart';

import '../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Laptop",
    "Mobile",
    "Specker",
    "Computer",
    "Bags",
    "Cats",
  ];
  int sellectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
          height: 50,
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BuildCategories(index),
          )),
    );
  }

  Widget BuildCategories(int index) => GestureDetector(
        onTap: () => setState(() {
          sellectedIndex = index;
        }),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color:
                        sellectedIndex == index ? kTextColor : kTextLightColor),
              ),
              Container(
                margin: const EdgeInsets.only(top: kDefaultPadding / 4),
                height: 2,
                color:
                    sellectedIndex == index ? Colors.red : Colors.transparent,
                width: 20,
              ),
            ],
          ),
        ),
      );
}
