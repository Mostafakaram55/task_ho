
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ho/Modules/HomeView/widgets/result_screen_Restaurant.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:task_ho/core/Manager/Color_Manager.dart';
import 'package:task_ho/core/Manager/assets_manager.dart';

import 'ResultScreenRestaurant_body.dart';
class  MostPopularItem extends StatelessWidget {
    MostPopularItem({Key? key,required this.image}) : super(key: key);
String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 120.h,
            width: 130.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s10.sp),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              )
            ),
          ),
          SizedBox(width: AppSize.s10.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                  'Meraki Resort (sharm el sheikh)',
                style: TextStyle(
                  color: Theme.of(context).disabledColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
               Row(
                children: [
                  Text(
                      'View On Map',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: AppSize.s16.sp
                    ),
                  ),
                  Image(
                    height: 25.h,
                      width: 30.w,
                      fit: BoxFit.cover,
                      image: const AssetImage(AssetData.map)
                  )
                ],
              ),
              SizedBox(
                height: AppSize.s10.h,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const ResultScreenRestaurant()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.buttonColor,
                    borderRadius: BorderRadius.circular(AppSize.s10.sp)
                  ),
                  width: AppSize.s100.w,
                  height: AppSize.s30.h,
                  child:   Padding(
                    padding:  EdgeInsets.all(8.0.sp),
                    child:const  Center(
                        child:  Text(
                            'Show Details',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
