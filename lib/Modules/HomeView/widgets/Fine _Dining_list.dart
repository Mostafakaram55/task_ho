
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_item_to city.dart';
class FineDiningList extends StatelessWidget {
  const FineDiningList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context,index)=>CustomItemToCity(
            text: const Text(
              'Bab El-Sharq',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            image:'https://www.eataly.ca/wp-content/uploads/2020/03/ETO_FoodApp-Photo_CenaPerDue-2021.4_OH_Long_750x500.jpg' ,
          ),
          separatorBuilder: (context,index)=>SizedBox(width: AppSize.s10.w,),
          itemCount: 20),
    );
  }
}
