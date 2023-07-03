
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/custom_item_to%20city.dart';

import '../../../core/Manager/App_size.dart';
import '../../../core/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Fine _Dining_list.dart';
import 'Outdoor_list.dart';
import 'custom_list_delivery.dart';
class CityRestaurantsBody extends StatelessWidget{
  const CityRestaurantsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          child:Padding(
            padding:  EdgeInsets.symmetric(vertical: AppSize.s20.sp),
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon:Icon(
                  IconBroken.Arrow___Left,
                  size: AppSize.s30.sp,
                  color: Theme.of(context).disabledColor,
                )),
                SizedBox(width: AppSize.s10.w,),
                Text(
                  'Restaurant In Cairo',
                  style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontSize: AppSize.s18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.all(8.0.sp),
            child: Text(
                'Delivery Restaurant',
              style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontWeight: FontWeight.bold,
                fontSize: AppSize.s20
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child:DeliveryList(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.all(8.0.sp),
            child: Text(
              'Outdoor Seating Restaurant',
              style: TextStyle(
                  color: Theme.of(context).disabledColor,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.s20
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child:OutdoorList(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.all(8.0.sp),
            child: Text(
              'Fine Dining Restaurant',
              style: TextStyle(
                  color: Theme.of(context).disabledColor,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.s20
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child:FineDiningList(),
        ),
      ],
    );
  }
}
