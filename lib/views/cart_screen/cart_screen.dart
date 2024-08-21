import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treadly1/constants/app_colors.dart';
import 'package:treadly1/constants/style.dart';
import 'package:treadly1/global_widget/custom_button.dart';
import 'package:treadly1/views/cart_screen/payment_option.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(51, 144, 124, 1),
        title: Text("My Cart ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Change this to your desired color
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery to trady team ,75511",style: TextStyle(fontSize: 22,),),
                        CustomElevatedButton(onPressed: (){},
                            buttonText: "change",
                          buttonColor: AppColors.primaryColor,
                          textColor: Colors.white,
                          borderColor: null,
                          fontSize: 15,),

                      ],
                    ),
                    Text("Dhaka bangladesh"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height:10),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              height: 250,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 30.0,left: 8.0),
                       child:  Image.asset("assets/images/img_5.png",width: 150,),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeadingThree(data: "Cocacola",
                        color: Colors.black,
                          fontSize: 24,
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            HeadingThree(data: "\$25",
                              color: AppColors.primaryColor,),
                            SizedBox(width: 10,),
                            Text("\$50",
                              style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 16,),),
                            SizedBox(width: 4,),
                            Text("50%off",style: TextStyle(fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 8),
                        // Quantity
                        Row(
                          children: [
                            Text(
                              'Qty:',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),
                            DropdownButton<int>(
                              value: 1,
                              onChanged: (int? newValue) {},
                              items: <int>[1, 2, 3, 4, 5]
                                  .map<DropdownMenuItem<int>>((int value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text('$value'),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ],
                    )
                    ],
                  ),
                  Divider(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child:TextButton(onPressed: (){},
                        child:Text("Remove",style: TextStyle(color: Colors.grey),))),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            width: double.infinity,
            color: AppColors.backGroundColors,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price details",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingTwo(data: "Price(1 item)",
                      color: Colors.black,),
                      HeadingTwo(data: "\$25",
                      color: Colors.black,),
                    ],
                  ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingTwo(data: "Delivery fee",
                    color: Colors.black,),
                  HeadingTwo(data: "info",
                    color: Colors.black,),
                ],
              ),
                  SizedBox(height: 10,),
                  Divider(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingTwo(data: "Total amount",
                        color: Colors.black,),
                      HeadingTwo(data: "\$25",
                        color: Colors.black,),
                    ],
                  ),
                ]
            ),
          )
          ),
          SizedBox(height: 122,),
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child:Column(
                children: [
                  ElevatedButton(onPressed: (){
                    Get.to(PaymentOption());
            /*
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Add_To_Card()),
                          );
            */
                  },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff33907C),
                        fixedSize: Size(300, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
            
                    ),
                    child: Text("Add To Cart", style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
