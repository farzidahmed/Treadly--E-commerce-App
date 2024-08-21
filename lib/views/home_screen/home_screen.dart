import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../constants/app_colors.dart';
import '../../constants/style.dart';
import '../../global_widget/categories.dart';
import '../../global_widget/custom_button.dart';
import '../../global_widget/custom_test_widget.dart';
import '../../global_widget/new_product.dart';
import '../../global_widget/new_product_tiles.dart';
import '../../global_widget/popular_product_tile.dart';
import '../../global_widget/popular_products.dart';
import '../../global_widget/silder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const HeadingTwo(
          data: 'Groceries',
          fontSize: 25,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Icon(
                      CupertinoIcons.cart_fill,
                      color: Colors.white,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: TextFormField(
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
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const CustomSlider(),
              const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                child: HeadingTwo(
                  data: 'Categories',
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Categories(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    const HeadingTwo(
                      data: 'New Product',
                      color: Colors.black,
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        Get.to(const NewProduct());
                      },
                      buttonText: 'see All',
                      buttonColor: AppColors.primaryColor,
                      textColor: Colors.white,
                      borderColor: null,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              const NewProductTiles(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeadingTwo(
                      data: 'Popular Product',
                      color: Colors.black,
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        Get.to(const PopularProduct());
                      },
                      buttonText: 'see All',
                      buttonColor: AppColors.primaryColor,
                      textColor: Colors.white,
                      borderColor: null,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              const PopularProductTiles(),
            ],
          ),
        ),
      ),
    );
  }
}
