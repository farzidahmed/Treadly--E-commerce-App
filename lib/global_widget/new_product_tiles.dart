import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treadly1/global_widget/product_tile.dart';

import 'details.dart';

class NewProductTiles extends StatelessWidget {
  const NewProductTiles({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        'img': 'assets/categories/beverages/img.png',
        'title': 'Strawberry Punch',
        'price': '25',
      },
      {
        'img': 'assets/categories/beverages/img_1.png',
        'title': 'Lemonade',
        'price': '15',
      },
      {
        'img': 'assets/categories/beverages/img_2.png',
        'title': 'Chocolate Bakery',
        'price': '10',
      },
      {
        'img': 'assets/categories/beverages/img_3.png',
        'title': 'Whisky',
        'price': '22',
      },
      {
        'img': 'assets/categories/beverages/img_4.png',
        'title': 'Chocolate Bakery',
        'price': '30',
      },
      {
        'img': 'assets/categories/beverages/img_5.png',
        'title': 'Fruit Punch',
        'price': '15',
      },
      {
        'img': 'assets/categories/breadBakery/img.png',
        'title': 'Bread Chocolate',
        'price': '25',
      },
      {
        'img': 'assets/categories/breadBakery/img_1.png',
        'title': 'Circle Bakery',
        'price': '15',
      },
      {
        'img': 'assets/categories/breadBakery/img_2.png',
        'title': 'Cookies',
        'price': '10',
      },
      {
        'img': 'assets/categories/breadBakery/img_3.png',
        'title': 'Long Bread',
        'price': '15',
      },
      {
        'img': 'assets/categories/breadBakery/img_4.png',
        'title': 'Donut',
        'price': '30',
      },
      {
        'img': 'assets/categories/breadBakery/img_5.png',
        'title': 'Bread',
        'price': '15',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){Get.to(DetailScreen(img: items[index]['img'], title: items[index]['title'],price: items[index]['price'],));},
              child: ProductTile(
                img: items[index]['img'],
                title: items[index]['title'],
                price: items[index]['price'],
                height: 160,
                width: 200,
              ),
            );
          },
        ),
      ),
    );
  }
}