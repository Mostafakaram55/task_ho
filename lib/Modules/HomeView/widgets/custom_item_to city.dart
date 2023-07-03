
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomItemToCity extends StatelessWidget {
   CustomItemToCity({Key? key,required this.text,required this.image}) : super(key: key);
 Text text;
 String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSize.s10.h,),
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s10),
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image),
                  )
              ),
            ),
            Container(
              color: Colors.black.withOpacity(.6),
              height: 30.h,
              width: 120.w,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: text,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
