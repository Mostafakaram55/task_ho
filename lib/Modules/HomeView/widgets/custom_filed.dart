

import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/Manager/Color_Manager.dart';
class CustomFiled extends StatelessWidget {
   CustomFiled({Key? key,required this.name,required this.image}) : super(key: key);
  String name;
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s10),
        color: Theme.of(context).backgroundColor,
      ),
      width: 110.w,
      height: 75.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              name,
            style:GoogleFonts.montserrat(
              color: Theme.of(context).disabledColor,
              fontSize: AppSize.s18.sp,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: AppSize.s10.h,
          ),
          Image.asset(
              image,
            width: AppSize.s30.w,
            height: AppSize.s30.h,
          ),
        ],
      ),
    );
  }
}
