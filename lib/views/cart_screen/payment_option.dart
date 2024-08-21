import 'package:flutter/material.dart';
import 'package:treadly1/constants/app_colors.dart';
import 'package:treadly1/constants/style.dart';

import '../../global_widget/custom_button.dart';
class PaymentOption extends StatefulWidget {
  const PaymentOption({super.key});

  @override
  State<PaymentOption> createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  int _value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text("Payment option",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Change this to your desired color
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: Container(
                width: double.infinity,
                color: AppColors.backGroundColors,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(value: 1,
                          groupValue: _value,
                          onChanged: (value){
                          setState(() {
                            _value=value!;
                          });
                          },
                        ),
                        SizedBox(width: 10,),
                        HeadingTwo(data: "Debit / credit card",
                        color: Colors.black,)
                      ],
                    ),
                    Divider(height: 4),
                    Row(
                      children: [
                        Radio(value: 2,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value=value!;
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        HeadingTwo(data: "Net banking",
                          color: Colors.black,)
                      ],
                    ),
                    Divider(height: 4,),
                    Row(
                      children: [
                        Radio(value: 3,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value=value!;
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        HeadingTwo(data: "Cash on Delivery",
                          color: Colors.black,)
                      ],
                    ),
                    Divider(height: 4,),
                    Row(
                      children: [
                        Radio(value: 4,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value=value!;
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        HeadingTwo(data: "Wallet",
                          color: Colors.black,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
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
          ),
        ],
      ),
    );
  }
}
