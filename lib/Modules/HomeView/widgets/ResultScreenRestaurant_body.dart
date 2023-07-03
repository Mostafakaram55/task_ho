
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:task_ho/core/Manager/Color_Manager.dart';
import 'package:task_ho/core/icons.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'baseList.dart';

class ResultScreenRestaurantBody extends StatelessWidget {
  const ResultScreenRestaurantBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: AppSize.s24.sp),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(
                      IconBroken.Arrow___Left,
                      size: AppSize.s30.sp,
                      color: Theme.of(context).disabledColor,
                    )),
                    Text(
                        'Premier Le Reve Hotel & Spa',
                      style: TextStyle(
                        color: Theme.of(context).disabledColor,
                        fontWeight: FontWeight.bold,
                        fontSize: AppSize.s18.sp
                      ),
                    )
                  ],
                ),
              ),
              Image.network(
                  'https://cdn.al-ain.com/lg/images/2018/3/29/121-183325-21-exciting-restaurants-world_700x400.jpeg',
                width: double.infinity,
                height: 200.h,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppSize.s10.h,),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      size: AppSize.s22.sp,
                      color:ColorManager.buttonColor,
                    ),
                    Text(
                        'location',
                      style: TextStyle(
                        color: Theme.of(context).disabledColor,
                        fontSize: AppSize.s20
                      ),
                    )
                  ],
                ),
                SizedBox(height: AppSize.s10.h,),
                Row(
                  children: [
                    Icon(
                      Icons.menu_book,
                      size: AppSize.s22.sp,
                      color:ColorManager.buttonColor,
                    ),
                    Text(
                      'Menu',
                      style: TextStyle(
                          color: Theme.of(context).disabledColor,
                          fontSize: AppSize.s20
                      ),
                    )
                  ],
                ),
                SizedBox(height: AppSize.s10.h,),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: AppSize.s22.sp,
                      color:ColorManager.buttonColor,
                    ),
                    Text(
                      '0111 077 8856',
                      style: TextStyle(
                          color: Theme.of(context).disabledColor,
                          fontSize: AppSize.s20
                      ),
                    )
                  ],
                ),
                SizedBox(height: AppSize.s20.h,),
                Text(
                    'Details',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSize.s20
                  ),
                ),
                const Divider(),
                SizedBox(height: AppSize.s10.h,),
                Text(
                    'CUISINES',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontSize: AppSize.s18.sp,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Middle Eastern, Egyptian, Barbecue, Arabic',
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontSize: AppSize.s16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                  ),
                ),
                SizedBox(height: AppSize.s4.h,),
                Text(
                  'Special Diets',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontSize: AppSize.s18.sp,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Vegetarian Friendly, Vegan Options, Halal, Gluten Free Options',
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontSize: AppSize.s16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                  ),
                ),
                SizedBox(height: AppSize.s10.h,),
                InkWell(
                  onTap: (){
                    //Event...
                  },
                  child: Center(
                    child: Container(
                      width: 130.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s20),
                        color: ColorManager.buttonColor
                      ),
                       child: Center(
                         child: Text(
                           textAlign: TextAlign.center,
                             'Book now',
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: AppSize.s18.sp
                           ),
                         ),
                       ),
                    ),
                  ),
                ),
                SizedBox(height: AppSize.s10.h,),
                Text(
                  'You may also like',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontSize: AppSize.s18.sp,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                SizedBox(height: AppSize.s10.h,),

              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: BaseList(),
        ),
      ],
    );
  }

}
