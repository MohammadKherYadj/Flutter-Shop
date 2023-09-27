import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Title",
                    labelStyle: const TextStyle(color: Colors.black),
                    disabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextFormField(
                  maxLines: 2,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: "Subtitle",
                    labelStyle: const TextStyle(color: Colors.black),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Price",
                    suffix: const Text(
                      "\$",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    labelStyle: const TextStyle(color: Colors.black),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextFormField(
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: "Description",
                    labelStyle: const TextStyle(color: Colors.black),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.add_a_photo),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 150)),
              )
            ],
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Add"))
        ]),
      ),
    ));
  }
}
