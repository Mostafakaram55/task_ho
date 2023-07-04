
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/Restaurant%20_view.dart';
import 'package:task_ho/Modules/HomeView/widgets/staying_view.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:task_ho/core/Manager/assets_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Transport/Transport_view.dart';
import 'Trips/Trips_view.dart';
import 'custom_filed.dart';
import 'custom_pest_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSize.s30.sp,vertical: AppSize.s20.sp),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics:const  BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>const StayingView()));
                      },
                      child: CustomFiled(
                        image:AssetData.staying,
                        name:'staying' ,
                      ),
                    ),
                    SizedBox(width: 70.w,),
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=> const RestaurantView()));
                      },
                      child: CustomFiled(
                        image:AssetData.restaurant ,
                        name: 'restaurant',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.w,),
                Row(
                   children: [
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>Tips()));
                       },
                       child: CustomFiled(
                         image: AssetData.trips,
                         name: 'trips',
                       ),
                     ),
                     SizedBox(width: 70.w,),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>TransportView()));
                       },
                       child: CustomFiled(
                         image: AssetData.transport,
                         name: 'transport',
                       ),
                     ),
                   ],
                ),
                SizedBox(height: 40.w,),
                Card(
                  elevation: 0,
                  color: Theme.of(context).backgroundColor,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 130.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppSize.s10.sp),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage(
                                AssetData.per,
                              )
                            )
                          ),
                        ),
                      ),
                      SizedBox(width: 6.w,),
                       Expanded(
                        child: Padding(
                          padding:  EdgeInsets.all(8.0.sp),
                          child:  Column(
                            children: [
                              Text(
                                  'Egypt',
                                style: TextStyle(
                                  color: Theme.of(context).disabledColor,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                  'Tourism in Egypt is one of the most important sources of national income, with the annual dollar revenues it provides, and the foreign currency returns that enabled it to participate significantly in the gross domestic product, and to combat unemployment by employing a wide segment of the workforce in Egypt',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                style: TextStyle(
                                  color: Theme.of(context).disabledColor,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.w,),
                Padding(
                   padding:  EdgeInsets.all(8.0.sp),
                   child: Text(
                       'The Best Destination in Egypt',
                     style: TextStyle(
                       color: Theme.of(context).disabledColor,
                       fontWeight: FontWeight.w500
                     ),
                   ),
                 ),
                SizedBox(
                  height: 100.h,
                    child: const CustomPestList()),
              ],
            )
          ],
        ),
      ),
    );
  }

}
