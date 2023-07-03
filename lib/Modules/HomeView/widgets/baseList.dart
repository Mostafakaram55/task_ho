
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';

import 'base_list_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BaseList extends StatelessWidget {
  const BaseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index)=>BaseListItem(
            image: 'https://www.foodiesfeed.com/wp-content/uploads/2023/04/cheeseburger.jpg',
            text:  Text(
                'Fayruz Lebanese Restaurant',
              style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontSize: AppSize.s16.sp,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          separatorBuilder: (_,index)=>SizedBox(width: AppSize.s10.w,),
          itemCount: 27),
    );
  }
}
