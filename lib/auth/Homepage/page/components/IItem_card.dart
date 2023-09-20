import 'package:flutter/material.dart';
import 'package:shop/auth/Homepage/page/details/details_screen.dart';
import '../../constants.dart';
import '../../products.dart';

class ItemCard extends StatelessWidget {
  final Product product;

  const ItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(
                      product: product,
                    )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            height: 150,
            width: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(product.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                product.title,
                style: const TextStyle(color: kTextColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "\$${product.price}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
