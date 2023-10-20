import 'package:budget_manager/Utils/App%20Theme/App%20Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget LoginButton({required Color clr1, required Color clr2, required double height, required String text}) {
  Widget child;
//------ change text according to your need
  //---if the text is this "Continue with Google" then the row will show otherwise just text
  if (text == "Continue with Google") {
    child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/img/search.png',height: 24) ,// Replace with the appropriate Google icon
        SizedBox(width: 8), // Add some spacing between the icon and text
        Text(
          text,
          style: TextStyle(
            color: clr2,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  } else {
    child = Text(
      text,
      style: TextStyle(
        color: clr2,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }

  return Container(
    height: height,
    width: Get.width,
    //----decoration to contiainer
    decoration: BoxDecoration(
      color: clr1,
      borderRadius: BorderRadius.circular(25),
      border: Border.all(
        color: AppColors.appColor,
        width: 2,
      ),
    ),
    alignment: Alignment.center,
    child: child,
  );
}
