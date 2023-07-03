
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/City%20restaurants_view.dart';
import 'package:task_ho/Modules/HomeView/widgets/custom_Restaurant.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ho/core/icons.dart';

import 'most popular_list.dart';
class RestaurantBody extends StatelessWidget {
  const RestaurantBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSize.s20.h,),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(
                IconBroken.Arrow___Left,
                size: AppSize.s30.sp,
                color: Theme.of(context).disabledColor,
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Famous Restaurant In Egypt',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSize.s20.sp,
                  ),
                ),
              ),
              SizedBox(height: AppSize.s10.h,),
              SizedBox(
                height: 130.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context,index)=>InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const CityRestaurantsView()));
                    },
                    child: CustomRestaurantBody(
                      image: 'https://ychef.files.bbci.co.uk/976x549/p07zy3y6.jpg',
                      text:const Text(
                        'Cairo Restaurants',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context,index)=>SizedBox(width: AppSize.s4.w,),
                  itemCount: 27,
                ),
              ),
              SizedBox(height: AppSize.s10.h,),
              Divider(
                height:1.h,
                color: Colors.grey,
              ),
              SizedBox(height: AppSize.s10.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.sp),
                child: Text(
                  'The most popular restaurant ',
                  style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontSize: AppSize.s16.sp,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
        child:MostPopularList(),
      )
      ],
    );
  }
}
