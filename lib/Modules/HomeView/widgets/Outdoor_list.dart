
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_item_to city.dart';

class OutdoorList extends StatelessWidget {
  const OutdoorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 150.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context,index)=>CustomItemToCity(
            text: const Text(
              'Al Khal Egyptian Restaurant',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            image:'https://tacitcorpv2content.tacitcorporation.com/wp-content/uploads/2020/03/Food-Delivery-Trends.jpg' ,
          ),
          separatorBuilder: (context,index)=>SizedBox(width: AppSize.s10.w,),
          itemCount: 20),
    );
  }
}
