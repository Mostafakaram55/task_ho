
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:task_ho/core/Manager/Color_Manager.dart';
import 'package:task_ho/core/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_car.dart';

class TransportBody extends StatelessWidget {
  const TransportBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(AppSize.s20.sp),
      child: Column(
        children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Filter By Location',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.sp),
            )
          ),
        ),
          SizedBox(height: 20.sp,),
          Material(
            elevation: 3,
            child: Container(
              height: 250.h,
              width: double.infinity,
              color:Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Car Name',
                              style: TextStyle(
                                color: Theme.of(context).disabledColor,
                                fontSize: AppSize.s20.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 10.sp),
                              child: Text(
                                  'car Features :',
                                style: TextStyle(
                                    color: Theme.of(context).disabledColor,
                                    fontSize: AppSize.s18.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                           Padding(
                             padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                             child: Column(
                               children: [
                                 Text(
                                     'Features 1',
                                   style: TextStyle(
                                       color: Theme.of(context).disabledColor,
                                       fontSize: AppSize.s16.sp,
                                       fontWeight: FontWeight.w400
                                   ),
                                 ),
                                 SizedBox(height: 5.h,),
                                 Text(
                                     'Features 2',
                                   style: TextStyle(
                                       color: Theme.of(context).disabledColor,
                                       fontSize: AppSize.s16.sp,
                                       fontWeight: FontWeight.w400
                                   ),
                                 ),
                                 SizedBox(height: 5.h,),
                                 Text(
                                     'Features 3',
                                   style: TextStyle(
                                       color: Theme.of(context).disabledColor,
                                       fontSize: AppSize.s16.sp,
                                       fontWeight: FontWeight.w400
                                   ),
                                 ),
                                 SizedBox(height: 5.h,),
                                 Text(' Features4 ', style: TextStyle(
                                     color: Theme.of(context).disabledColor,
                                     fontSize: AppSize.s16.sp,
                                     fontWeight: FontWeight.w400
                                 ),),
                                   SizedBox(height: 5.h,),

                                 Text('Features 5', style: TextStyle(
                                     color: Theme.of(context).disabledColor,
                                     fontSize: AppSize.s16.sp,

                                     fontWeight: FontWeight.w400
                                 ),),
                                 SizedBox(height: 5.h,),
                               ],
                             ),
                           ),
                            SizedBox(
                              height: 20.sp,
                            ),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_gSOFdEvCmhs8X_5xIbC88-2gTrnN-Q4MQFk3ZcXFOA&s',
                              width: 100.w,
                              height: 100.h,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.sp,),
                            const Text(
                                'View On Map',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10.sp,),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (_)=>const BookCar()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                color: ColorManager.buttonColor
                            ),
                            width: 100.w,
                            height: 40.w,
                            child: Center(
                              child: Text(
                                'Book',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppSize.s16.sp
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Agency',
                                  style: TextStyle(
                                      color: Theme.of(context).disabledColor,
                                      fontSize: AppSize.s16.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: AppSize.s10.h,),
                                Text(
                                  'CarEgypt',
                                  style: TextStyle(
                                      color: Theme.of(context).disabledColor,
                                      fontSize: AppSize.s16.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: AppSize.s10.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Price Per Day', style: TextStyle(
                                    color: Theme.of(context).disabledColor,
                                    fontSize: AppSize.s16.sp,
                                    fontWeight: FontWeight.bold
                                ),),
                                SizedBox(height: AppSize.s10.h,),
                                Text('1200 EGP', style: TextStyle(
                                    color: Theme.of(context).disabledColor,
                                    fontSize: AppSize.s16.sp,
                                    fontWeight: FontWeight.bold
                                ),),

                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
