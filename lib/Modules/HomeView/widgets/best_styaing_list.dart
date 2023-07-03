import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/base_list_item.dart';

import '../../../core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestStayingList extends StatelessWidget {
  const BestStayingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index)=>BaseListItem(
            image: 'https://cf.bstatic.com/xdata/images/hotel/max500/301942680.jpg?k=67f5abe85bb847ca46eb3f0b42614be2df8135524b75a6fe7a10e61d99b4c5d2&o=',
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
