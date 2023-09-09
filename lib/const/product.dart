class Product {
  final int price, id;
  final String description, title, image, subtitle;

  Product(
      {required this.description,
      required this.id,
      required this.image,
      required this.price,
      required this.subtitle,
      required this.title});
}

List<Product> products = [
  Product(
      description:
          " Ram : 8 GB ,Hard : 256 GB,disply : Super Amoled , camera : 200px",
      id: 2,
      image: "image/Iphon 13 pro max 13 red.jpg",
      price: 1900,
      subtitle: "Iphone 13 pro Max",
      title: "Iphone 13 pro max "),
  Product(
      description: "Ram : 4, Hard : 128 GB , disply : HD , Camera : 48px",
      id: 3,
      image: "image/Samsung galaxy A14 green.jpg",
      price: 300,
      subtitle: "Samsung Galaxy A14",
      title: "ٍSamsung Galaxy A14"),
  Product(
      description: "we can turn on with usb and bluetooth",
      id: 4,
      image: "image/Speacker Red.jpg",
      price: 50,
      subtitle: "Speacker",
      title: "Specker")
];
