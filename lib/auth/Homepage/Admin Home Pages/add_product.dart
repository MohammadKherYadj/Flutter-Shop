import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

List<String> catigories = ["Laptop", "Mobile", "Specker", "Airbads"];
var selectedCarigory;

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: DropdownButton(
                  hint: const Text("Carigory"),
                  items: catigories
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCarigory = value;
                    });
                  },
                  value: selectedCarigory,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => SizedBox(
                            height: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    child: const Icon(
                                      color: Colors.black,
                                      Icons.camera,
                                      size: 80,
                                    )),
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    child: const Icon(
                                      color: Colors.black,
                                      Icons.photo,
                                      size: 80,
                                    )),
                              ],
                            ),
                          ));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                ),
                child: const Icon(Icons.add_a_photo),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Add"),
          )
        ]),
      ),
    ));
  }
}
