import 'package:shop/auth/Homepage/page/components/categories.dart';

class Product {
  final int price, id;
  final String description, title, image, subtitle;
  final String categories;

  Product(
      {required this.description,
      required this.id,
      required this.image,
      required this.categories,
      required this.price,
      required this.subtitle,
      required this.title});
}

List<Product> products = [
  Product(
      description:
          "Compatible with ios devaice , iPadOS device ,Apple Watch,or Mac with the lasted Software",
      id: 1,
      image: "images/download.jpg",
      subtitle: "AirPods with MagSafe Charging Case",
      title: " AirPods",
      price: 200,
      categories: "airbods"),
  Product(
      description:
          " Ram : 8 GB ,Hard : 256 GB,disply : Super Amoled , camera : 200px",
      id: 2,
      image: "images/Iphon 13 pro max 13 red.jpg",
      price: 1900,
      subtitle: "Iphone 13 pro Max",
      title: "Iphone 13 pro max ",
      categories: "mobile"),
  Product(
      description: "Ram : 4, Hard : 128 GB , disply : HD , Camera : 48px",
      id: 3,
      image: "images/Samsung galaxy A14 green.jpg",
      price: 300,
      subtitle: "Samsung Galaxy A14",
      title: "Samsung Galaxy A14",
      categories: "mobile"),
  Product(
      description: "we can turn on with usb and bluetooth",
      id: 4,
      image: "images/Speacker Red.jpg",
      price: 50,
      subtitle: "Speacker",
      title: "Specker",
      categories: "specker"),
  Product(
      description:
          "Compatible with ios devaice , iPadOS device ,Apple Watch,or Mac with the lasted Software",
      id: 1,
      image: "images/download.jpg",
      subtitle: "AirPods with MagSafe Charging Case",
      title: " AirPods",
      price: 200,
      categories: "airbods"),
  Product(
      description:
          " Ram : 8 GB ,Hard : 256 GB,disply : Super Amoled , camera : 200px",
      id: 2,
      image: "images/Iphon 13 pro max 13 red.jpg",
      price: 1900,
      subtitle: "image/Iphon 13 pro max Green.jpg",
      title: "Iphone 13 pro max ",
      categories: "mobile"),
  Product(
      description: "Ram : 4, Hard : 128 GB , disply : HD , Camera : 48px",
      id: 3,
      image: "images/Samsung galaxy A14 red.jpg",
      price: 300,
      subtitle: "Samsung Galaxy A14",
      title: "ٍSamsung Galaxy A14",
      categories: "mobile"),
  Product(
      description: "we can turn on with usb and bluetooth",
      id: 4,
      image: "images/Speacker Red.jpg",
      price: 50,
      subtitle: "Speacker",
      title: "Specker",
      categories: "specker"),
  Product(
      description:
          "Compatible with ios devaice , iPadOS device ,Apple Watch,or Mac with the lasted Software",
      id: 1,
      image: "images/download.jpg",
      subtitle: "AirPods with MagSafe Charging Case",
      title: " AirPods",
      price: 200,
      categories: "airbods"),
  Product(
      description:
          " Ram : 8 GB ,Hard : 256 GB,disply : Super Amoled , camera : 200px",
      id: 2,
      image: "images/Iphon 13 pro max 13 red.jpg",
      price: 1900,
      subtitle: "Iphone 13 pro Max",
      title: "Iphone 13 pro max ",
      categories: "mobile"),
  Product(
      description: "Ram : 4, Hard : 128 GB , disply : HD , Camera : 48px",
      id: 3,
      image: "images/Samsung galaxy A14 green.jpg",
      price: 300,
      subtitle: "Samsung Galaxy A14",
      title: "ٍSamsung Galaxy A14",
      categories: "mobile"),
  Product(
      description: "we can turn on with usb and bluetooth",
      id: 4,
      image: "images/Speacker Red.jpg",
      price: 50,
      subtitle: "Speacker",
      title: "Specker",
      categories: "specker")
];
