import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../global_widget/custom_button.dart';
import '../../global_widget/details.dart';
import '../../global_widget/product_tile.dart';


class FavoriteScreen extends StatelessWidget {



  const FavoriteScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        'img': 'assets/categories/vegetables/img.png',
        'title': 'Carrot',
        'price': '25',
      },
      {
        'img': 'assets/categories/vegetables/img_1.png',
        'title': 'Cabbage',
        'price': '15',
      },
      {
        'img': 'assets/categories/vegetables/img_2.png',
        'title': 'Tomato',
        'price': '10',
      },
      {
        'img': 'assets/categories/vegetables/img_3.png',
        'title': 'Garlic',
        'price': '15',
      },
      {
        'img': 'assets/categories/vegetables/img_4.png',
        'title': 'Tomatoes',
        'price': '10',
      },
      {
        'img': 'assets/categories/vegetables/img_5.png',
        'title': 'Corn',
        'price': '15',
      },

      {
        'img': 'assets/categories/fruit/img.png',
        'title': 'Avocado',
        'price': '10',
      },
      {
        'img': 'assets/categories/fruit/img_1.png',
        'title': 'Banana',
        'price': '15',
      },
      {
        'img': 'assets/categories/fruit/img_2.png',
        'title': 'Orange',
        'price': '10',
      },
      {
        'img': 'assets/categories/fruit/img_3.png',
        'title': 'Papaya',
        'price': '15',
      },
      {
        'img': 'assets/categories/fruit/img_4.png',
        'title': 'Pineapple',
        'price': '10',
      },
      {
        'img': 'assets/categories/fruit/img_5.png',
        'title': 'Watermelon',
        'price': '15',
      },

    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          'Favorite',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  CupertinoIcons.cart_fill,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(130),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: '  Search Product',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.primaryColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomIconButton(
                      onPressed: () {},
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
