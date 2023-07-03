
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ho/core/Manager/Color_Manager.dart';

import '../../../../core/icons.dart';

class TripsResulteBody extends StatelessWidget {
  const TripsResulteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: AppSize.s30.sp,horizontal: AppSize.s4.sp),
      child: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(
                  IconBroken.Arrow___Left,
                  size: AppSize.s30.sp,
                  color: Theme.of(context).disabledColor,
                )),
                const Spacer(),
                IconButton(onPressed: (){}, icon: Icon(
                  Icons.share_rounded,
                  size: AppSize.s30.sp,
                  color: Theme.of(context).disabledColor,
                )),
                IconButton(onPressed: (){}, icon: Icon(
                  IconBroken.Heart,
                  size: AppSize.s30.sp,
                  color: Theme.of(context).disabledColor,
                )),
              ],
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Image.network(
                'https://media-cdn.tripadvisor.com/media/photo-s/01/89/3b/fa/sphinx-von-gizeh.jpg',
              width: double.infinity,
              height: 170.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Text(
                'Private Day:Giza Pyramids, Sphinx',
              maxLines: 3,
              style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontWeight: FontWeight.bold,
                fontSize: AppSize.s18.sp
              ),
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Text(
                'By Medhat TouristGuide',
              style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontWeight: FontWeight.w500
              ),
            ),
            const Divider(),
            Text(
                'Hit Cairo’s essential sights in just a day with your personal Egyptologist and Wi-Fi–enabled minivan on this time-saving door-to-door tour. See the Pyramids of Giza, the Great Sphinx, and ride a camel across the desert, then enjoy a restaurant lunch   ',
              maxLines: 7,
              style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontSize: AppSize.s16,
              ),
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.timer_off_outlined,
                  color: Theme.of(context).disabledColor,
                  size: AppSize.s20.sp,
                ),
                Text(
                    'Duration: 8-10 Hours',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone_android,
                  color: Theme.of(context).disabledColor,
                  size: AppSize.s20.sp,
                ),
                Text(
                    'Mobile Ticket',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Text(
                'Itenrary',
              style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.buttonColor,
                  radius: 10.sp,
                  child:  const Text('1'),
                ),
                SizedBox(
                  width: AppSize.s16.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Start:',
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp
                    ),
                  ),
                  Text('You ‘ll get picked up'),
                ],
                )
              ],
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.buttonColor,
                  radius: 10.sp,
                  child:  const Text('1'),
                ),
                SizedBox(
                  width: AppSize.s16.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Start:',
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp
                    ),
                  ),
                  Text('You ‘ll get picked up'),
                ],
                )
              ],
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.buttonColor,
                  radius: 10.sp,
                  child:  const Text('1'),
                ),
                SizedBox(
                  width: AppSize.s16.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Start:',
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp
                    ),
                  ),
                  Text('You ‘ll get picked up'),
                ],
                )
              ],
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.buttonColor,
                  radius: 10.sp,
                  child:  const Text('1'),
                ),
                SizedBox(
                  width: AppSize.s16.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Start:',
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp
                    ),
                  ),
                  Text('You ‘ll get picked up'),
                ],
                )
              ],
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Text(
                'Reserve your spot',
              style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Text(
              'From',
              style: TextStyle(
                  color: Theme.of(context).disabledColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: AppSize.s16.h,
            ),
            Row(
              children: [
                Text(
                  "120\$",
                  style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const Spacer(),
                Container(
                  width: 100.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: ColorManager.buttonColor,
                  ),
                  child:  Center(child: Text(
                      'Book',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp
                    ),
                  )),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
