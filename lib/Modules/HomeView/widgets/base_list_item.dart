
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BaseListItem extends StatelessWidget {
   BaseListItem({Key? key,required this.text,required this.image}) : super(key: key);
  Text text;
  String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppSize.s150.h,
          width: AppSize.s160.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s10.sp),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            )
          ),
        ),
        SizedBox(height: AppSize.s8.h,),
        text,
      ],
    );
  }
}
