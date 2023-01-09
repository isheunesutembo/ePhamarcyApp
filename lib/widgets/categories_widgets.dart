import 'package:ephamarcy/data/fakedata.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        physics:const ClampingScrollPhysics(),
        itemCount: FakeData.categories.length,
        scrollDirection: Axis.horizontal,
        
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      FakeData.categories[index].image!,
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Text(
                    FakeData.categories[index].name!,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
          );
         
        },
      ),
    );
  }
}
