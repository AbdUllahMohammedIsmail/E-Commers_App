import 'package:flutter/material.dart';
import '../Widgets/Card.dart';


class Start_Page extends StatelessWidget {
  const Start_Page({super.key});
  static String id = 'Start_Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 116, 179, 167),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 116, 179, 167),
        title:const Text('New Trend'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon:const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 24.0,
            ),
          ),
        ],
      ),
      body:  ListView(
        children:[  Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50 ,left: 10),
              child: Column(
                children: [
                  Product_Card(
                    Product_Name: 'Shose',
                    Product_Price: '\$79',
                    Product_Photo: 'images/icon/shoes-17770.png',
                    Is_Favorite: Colors.red,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'T-Shirt',
                    Product_Price: '\$35',
                    Product_Photo: 'images/icon/shirt-png-23754.png',
                    Is_Favorite: Colors.red,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Hand Watch',
                    Product_Price: '\$50',
                    Product_Photo: 'images/icon/watch-png-25022.png',
                    Is_Favorite: Colors.grey,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Iphone',
                    Product_Price: '\$1200',
                    Product_Photo: 'images/icon/iphone.png',
                    Is_Favorite: Colors.red,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Airpods',
                    Product_Price: '\$299',
                    Product_Photo: 'images/icon/Airpods.png',
                    Is_Favorite: Colors.red,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Football',
                    Product_Price: '\$10',
                    Product_Photo: 'images/icon/Football.png',
                    Is_Favorite: Colors.red,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Sofa',
                    Product_Price: '\$499',
                    Product_Photo: 'images/icon/Sofa.png',
                    Is_Favorite: Colors.grey,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Pants',
                    Product_Price: '\$25',
                    Product_Photo: 'images/icon/Pants.png',
                    Is_Favorite: Colors.grey,
                  ),
                  
           
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50 ,left: 10),
              child: Column(
                children: [
                  
                  Product_Card(
                    Product_Name: 'Bag',
                    Product_Price: '\$99',
                    Product_Photo: 'images/icon/bag.png',
                    Is_Favorite: Colors.grey,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Samsung',
                    Product_Price: '\$1099',
                    Product_Photo: 'images/icon/samsung.png',
                    Is_Favorite: Colors.red,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'School Bag',
                    Product_Price: '\$65',
                    Product_Photo: 'images/icon/bag2.png',
                    Is_Favorite: Colors.grey,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Smart Watch',
                    Product_Price: '\$115',
                    Product_Photo: 'images/icon/Watch.png',
                    Is_Favorite: Colors.grey,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Laptob',
                    Product_Price: '\$3500',
                    Product_Photo: 'images/icon/Laptob.png',
                    Is_Favorite: Colors.red,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Slipper',
                    Product_Price: '\$4.99',
                    Product_Photo: 'images/icon/Slipper.png',
                    Is_Favorite: Colors.grey,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Headphone',
                    Product_Price: '\$149',
                    Product_Photo: 'images/icon/Headphone.png',
                    Is_Favorite: Colors.grey,
                  ),
                  SizedBox(height: 35,),
                  Product_Card(
                    Product_Name: 'Dumbbell',
                    Product_Price: '\$189',
                    Product_Photo: 'images/icon/Dumbbell.png',
                    Is_Favorite: Colors.red,
                  ),
                ],
              ),
            ),
          ],
      
        ),
        ]
      ),
    );
  }
}


