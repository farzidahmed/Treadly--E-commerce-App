import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treadly1/global_widget/product_tile.dart';

import '../../constants/app_colors.dart';
import '../../global_widget/custom_button.dart';
import '../../global_widget/details.dart';




class ProductDetails extends StatelessWidget {
  final String data;
  final List<dynamic> items;

  const ProductDetails({super.key, required this.items, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          data,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomIconButton(
                  onPressed: () {
                  },
                  buttonText: 'Sort By',
                  icon: Icons.filter_list,
                ),
                CustomIconButton(
                  onPressed: () {},
                  buttonText: 'Location',
                  icon: Icons.location_on,
                ),
                CustomIconButton(
                  onPressed: () {},
                  buttonText: 'Category',
                  icon: Icons.storage,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              mainAxisSpacing: 4,
              crossAxisSpacing: 2,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Get.to(DetailScreen(
                      img: items[index]['img'],
                      title: items[index]['title'],
                      price: items[index]['price'],
                    ));
                  },
                  child: ProductTile(
                    img: items[index]['img'],
                    title: items[index]['title'],
                    price: items[index]['price'],
                  ));
            },
          ),
        ),
      ),
    );
  }
}
