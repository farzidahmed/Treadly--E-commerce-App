import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
class CustomTestWidget extends StatelessWidget {
   CustomTestWidget({super.key,this.titleText});

  String? titleText ;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 100,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(100))
      ),
      child: Text("$titleText"),
    );
  }
}
