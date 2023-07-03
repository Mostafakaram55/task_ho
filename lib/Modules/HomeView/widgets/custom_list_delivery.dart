
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_item_to city.dart';

class DeliveryList extends StatelessWidget {
  const DeliveryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context,index)=>CustomItemToCity(
            text: const Text(
                'Nişantaşi',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_aGkMshcN1BKfYaRdfDx9MY_RrmUdxlkVew&usqp=CAU' ,
          ),
          separatorBuilder: (context,index)=>SizedBox(width: AppSize.s10.w,),
          itemCount: 20),
    );
  }
}
