import 'package:ephamarcy/data/fakedata.dart';
import 'package:ephamarcy/models/product.dart';
import 'package:ephamarcy/pages/productdetails.dart';
import 'package:flutter/material.dart';

class Products_Widget extends StatelessWidget {
  const Products_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3),
        itemCount: FakeData.products.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDetailsPage(),
                        settings: RouteSettings(
                            arguments: FakeData.products[index])));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 1,
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        FakeData.products[index].productImage,
                        fit: BoxFit.fitHeight,
                        height: 150,
                      ),
                      Center(
                          child: Text(
                        FakeData.products[index].productName,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "\$${FakeData.products[index].productPrice}",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
