import 'package:ephamarcy/models/categories.dart';
import 'package:ephamarcy/models/product.dart';

class FakeData {
  static List<Categories> categories = [
    Categories(
        name: "Contaceptives",
        image: "assets/categories/contraceptivepills.png"),
    Categories(name: "Cough Syrup", image: "assets/categories/coughsyrup.png"),
    Categories(
        name: "Magnesium Pills", image: "assets/categories/magnesium.png"),
    Categories(name: "Pain Killers", image: "assets/categories/painkiller.png"),
    Categories(name: "ARVs", image: "assets/categories/testtube.png")
  ];

  static List<Product> products = [
    Product(
        productImage: "assets/products/cortex.jpeg",
        productName: "Cortex",
        productPrice: 10.99,
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet tincidunt tellus, ac porttitor magna tincidunt quis. Mauris semper magna quis tortor porta sodales. Nullam libero metus, sollicitudin et congue at, commodo non tellus. Sed sed felis maximus, porttitor lectus."),
    
    Product(
        productImage: "assets/products/bptablets.jpg",
        productName: "Blood Pressure Tablets",
        productPrice: 5.99,
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet tincidunt tellus, ac porttitor magna tincidunt quis. Mauris semper magna quis tortor porta sodales. Nullam libero metus, sollicitudin et congue at, commodo non tellus. Sed sed felis maximus, porttitor lectus."),
    Product(
        productImage: "assets/products/coughsyrup.jpg",
        productName: "Cough Syrup",
        productPrice: 1.99,
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet tincidunt tellus, ac porttitor magna tincidunt quis. Mauris semper magna quis tortor porta sodales. Nullam libero metus, sollicitudin et congue at, commodo non tellus. Sed sed felis maximus, porttitor lectus."),
    Product(
        productImage: "assets/products/durex.jpeg",
        productName: "Durex Condoms",
        productPrice: 12.99,
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet tincidunt tellus, ac porttitor magna tincidunt quis. Mauris semper magna quis tortor porta sodales. Nullam libero metus, sollicitudin et congue at, commodo non tellus. Sed sed felis maximus, porttitor lectus."),
    Product(
        productImage: "assets/products/painkillers.jpg",
        productName: "Pain Killers",
        productPrice: 0.99,
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet tincidunt tellus, ac porttitor magna tincidunt quis. Mauris semper magna quis tortor porta sodales. Nullam libero metus, sollicitudin et congue at, commodo non tellus. Sed sed felis maximus, porttitor lectus."),
    Product(
        productImage: "assets/products/sanitarypads.jpg",
        productName: "Sanitary Pads",
        productPrice: 6.99,
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet tincidunt tellus, ac porttitor magna tincidunt quis. Mauris semper magna quis tortor porta sodales. Nullam libero metus, sollicitudin et congue at, commodo non tellus. Sed sed felis maximus, porttitor lectus."),
            Product(
        productImage: "assets/products/gloves.jpg",
        productName: "Gloves",
        productPrice: 6.99,
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet tincidunt tellus, ac porttitor magna tincidunt quis. Mauris semper magna quis tortor porta sodales. Nullam libero metus, sollicitudin et congue at, commodo non tellus. Sed sed felis maximus, porttitor lectus."),
               Product(
        productImage: "assets/products/clinicalmasks.jpg",
        productName: "Clinical Masks",
        productPrice: 6.99,
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet tincidunt tellus, ac porttitor magna tincidunt quis. Mauris semper magna quis tortor porta sodales. Nullam libero metus, sollicitudin et congue at, commodo non tellus. Sed sed felis maximus, porttitor lectus.")
  ];
}
