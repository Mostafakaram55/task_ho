
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ho/Modules/HomeView/widgets/most%20popular_item.dart';

class MostPopularList extends StatelessWidget {
  const MostPopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
     physics: const NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) => MostPopularItem(
          image: 'https://ychef.files.bbci.co.uk/976x549/p07zy3y6.jpg',
        )),
        separatorBuilder:((context, index) => SizedBox(height: 7.h,)) ,
        itemCount: 15);
  }
}
