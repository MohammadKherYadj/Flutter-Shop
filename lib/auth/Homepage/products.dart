class Product {
  final int id;
  final String description, title, image, subtitle;
  final String categories;
  final double price;

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
      image: "images/AirPodsGreen.png",
      subtitle: "AirPods with MagSafe Charging Case",
      title: " AirPods",
      price: 200,
      categories: "airbods"),
  Product(
      description:
          " Ram : 8 GB ,Hard : 256 GB,disply : Super Amoled , camera : 200px",
      id: 2,
      image: "images/Iphon_13_pro_max_13_red.png",
      price: 1900,
      subtitle: "Iphone 13 pro Max",
      title: "Iphone 13 pro max ",
      categories: "mobile"),
  Product(
      description: "Ram : 4, Hard : 128 GB , disply : HD , Camera : 48px",
      id: 3,
      image: "images/Samsung_galaxy_A14_green.png",
      price: 300,
      subtitle: "Samsung Galaxy A14",
      title: "Samsung Galaxy A14",
      categories: "mobile"),
  Product(
      description: "we can turn on with usb and bluetooth",
      id: 4,
      image: "images/Speacker_Red.png",
      price: 50,
      subtitle: "Speacker",
      title: "Specker",
      categories: "specker"),
  Product(
      description:
          "Compatible with ios devaice , iPadOS device ,Apple Watch,or Mac with the lasted Software",
      id: 1,
      image: "images/AirPodsRed.png",
      subtitle: "AirPods with MagSafe Charging Case",
      title: " AirPods",
      price: 200,
      categories: "airbods"),
  Product(
      description:
          " Ram : 8 GB ,Hard : 256 GB,disply : Super Amoled , camera : 200px",
      id: 2,
      image: "images/Iphon_13_pro_max_Blue.png",
      price: 1900,
      subtitle: "Iphon 13 pro max Green",
      title: "Iphone 13 pro max ",
      categories: "mobile"),
  Product(
      description: "Ram : 4, Hard : 128 GB , disply : HD , Camera : 48px",
      id: 3,
      image: "images/Samsung_galaxy_A14_red.png",
      price: 300,
      subtitle: "Samsung Galaxy A14",
      title: "Samsung Galaxy A14",
      categories: "mobile"),
  Product(
      description: "we can turn on with usb and bluetooth",
      id: 4,
      image: "images/SpeackerGreen.png",
      price: 50,
      subtitle: "Speacker",
      title: "Specker",
      categories: "specker"),
  Product(
      description:
          "Compatible with ios devaice , iPadOS device ,Apple Watch,or Mac with the lasted Software",
      id: 1,
      image: "images/AirPodsWhite.png",
      subtitle: "AirPods with MagSafe Charging Case",
      title: " AirPods",
      price: 200,
      categories: "airbods"),
  Product(
      description:
          " Ram : 8 GB ,Hard : 256 GB,disply : Super Amoled , camera : 200px",
      id: 2,
      image: "images/Iphon_13_pro_max_Green.png",
      price: 1900,
      subtitle: "Iphone 13 pro Max",
      title: "Iphone 13 pro max ",
      categories: "mobile"),
  Product(
      description: "Ram : 4, Hard : 128 GB , disply : HD , Camera : 48px",
      id: 3,
      image: "images/Samsung_galaxy_A14_blue.png",
      price: 300,
      subtitle: "Samsung Galaxy A14",
      title: "Samsung Galaxy A14",
      categories: "mobile"),
  Product(
      description: "we can turn on with usb and bluetooth",
      id: 4,
      image: "images/Speacker.png",
      price: 50,
      subtitle: "Speacker",
      title: "Specker",
      categories: "specker")
];
