import 'package:flutter/material.dart';

class Product_Card extends StatelessWidget {
  const Product_Card(
      {required this.Product_Name,
      required this.Product_Price,
      required this.Product_Photo,
      required this.Is_Favorite,
      });

  final String Product_Name;
  final String Product_Price;
  final String Product_Photo;
  final Color Is_Favorite;
   


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          height: 120,
          width: 180,
          child: Card(
            
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    Product_Name,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Product_Price),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Icon(
                          Icons.favorite,
                          color: Is_Favorite,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: -40,
          child: Image.asset(
            Product_Photo,
            height: 100,
            width: 100,
          ),
        ),
      ]),
    );
  }
}
