import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/custom_item_to%20city.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FamousHotels extends StatelessWidget {
  const FamousHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>CustomItemToCity(
           text:Text(
            'Cairo Restaurants',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: AppSize.s12.sp
          ),
        ),
        image: 'https://alamphoto.com/wp-content/uploads/2017/08/Egypt%20Pyramids%20Photos%20(11).jpg',
      ),
          separatorBuilder: (context,index)=>SizedBox(width: AppSize.s10.w,),
          itemCount: 27),
    );
  }
}
