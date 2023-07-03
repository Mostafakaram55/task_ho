


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:task_ho/core/Manager/assets_manager.dart';

class CustomPestList extends StatelessWidget {
  const CustomPestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>Container(
          height: AppSize.s70.h,
          width:AppSize.s100.h ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s10.sp),
            image: const DecorationImage(
              image: AssetImage(AssetData.per),
              fit: BoxFit.cover
            )
          ),
        ), 
        separatorBuilder: (context,index)=>SizedBox(
          width: 7.w,
        ),
        itemCount: 10);
  }
}
