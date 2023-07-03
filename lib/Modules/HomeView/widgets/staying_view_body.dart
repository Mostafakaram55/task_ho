
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/stayaing_most_popular_list.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:task_ho/core/Manager/assets_manager.dart';
import 'package:task_ho/core/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Famous Hotels.dart';
import 'most popular_list.dart';
class StayingViewBody extends StatefulWidget {
   StayingViewBody({Key? key}) : super(key: key);

  @override
  State<StayingViewBody> createState() => _StayingViewBodyState();
}

class _StayingViewBodyState extends State<StayingViewBody> {
//هتحتاج تنقل الكود ده هناك في البلوك ماشي
  final List<String>cityNames=['1','2','3','4','5'];

  String? nameCity='1';

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: AppSize.s37.sp,horizontal: AppSize.s4.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(
                  IconBroken.Arrow___Left,
                  color: Theme.of(context).disabledColor,
                    size: AppSize.s30,
                )
                ),
                Text(
                    'Hotels',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSize.s20.sp,
                  ),
                ),
                CircleAvatar(
                  //متنساش هنا تروح علي البروفايل بقي
                  radius: 20.sp,
                  child: Image.network(
                      'https://icons.veryicon.com/png/o/internet--web/55-common-web-icons/person-4.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Image.asset(
                  AssetData.hol,
                fit: BoxFit.cover,
                width: double.infinity,
                height: AppSize.s260.h,
              ),
               Padding(
             padding: const EdgeInsets.all(AppSize.s24),
             child: Column(
               children: [
                 SizedBox(
                 height: AppSize.s10.h,
               ),
                 Text(
                   'Egypt Hotels and Places to Stay',
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: AppSize.s24.sp,
                       fontWeight: FontWeight.bold
                   ),
                 ),
                 SizedBox(
                   height: AppSize.s10.h,
                 ),
                 Text(
                   'Enter the City to check out the best prices',
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: AppSize.s16.sp,
                       fontWeight: FontWeight.bold
                   ),
                 ),
                 SizedBox(
                   height: AppSize.s30.h,
                 ),
                 Container(
                   //متنساش تاخد الماب اللي انت هتعملها في model وتحطها مكان الماب دي هااا
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(AppSize.s10.sp),
                     color: Colors.white.withOpacity(.6),
                   ),
                   width: AppSize.s100.w,
                   height: AppSize.s50.h,
                   child: Center(
                     child: DropdownButton<String>(
                       items: cityNames.map((e) => DropdownMenuItem(
                         value: e,
                         child:  Text(e,style: TextStyle(
                           color: Theme.of(context).disabledColor,
                           fontWeight: FontWeight.bold,
                           fontSize: AppSize.s16,
                         ),),
                       )).toList(),
                       onChanged: (value){
                         setState(() {
                           nameCity=value!;
                         });
                       },
                       value: nameCity,
                     ),
                   ),
                 ),
               ],
             ),
           ),
              SizedBox(
                height: AppSize.s20.h,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: AppSize.s10.sp),
            child: Text(
              'Famous Hotels In Egypt',
              style: TextStyle(
                  color: Theme.of(context).disabledColor,
                  fontSize: AppSize.s20.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

        ),
        const SliverToBoxAdapter(
          child:  FamousHotels(),
        ),
         SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              Text(
                  'The most popular Hotels in Egypt',
                style: TextStyle(
                  color: Theme.of(context).disabledColor,
                  fontSize: AppSize.s18.sp,
                  fontWeight: FontWeight.bold

                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: StayingMostPopularList(),
        ),
      ],
    );
  }
}
