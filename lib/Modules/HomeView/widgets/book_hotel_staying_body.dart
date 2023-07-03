import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Manager/App_size.dart';
import '../../../core/Manager/Color_Manager.dart';
import '../../../core/icons.dart';
import 'best_styaing_list.dart';
import 'baseList.dart';

class BookHotelStayingBody extends StatefulWidget {
   BookHotelStayingBody({Key? key}) : super(key: key);

  @override
  State<BookHotelStayingBody> createState() => _BookHotelStayingBodyState();
}

class _BookHotelStayingBodyState extends State<BookHotelStayingBody> {
  final List<String>  numberPersons=['1','2','3','4','5'];

  String? numPerson='1';
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
                'https://cf.bstatic.com/xdata/images/hotel/max500/301942680.jpg?k=67f5abe85bb847ca46eb3f0b42614be2df8135524b75a6fe7a10e61d99b4c5d2&o=',
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
                      Icons.public,
                      size: AppSize.s22.sp,
                      color:ColorManager.buttonColor,
                    ),
                    Text(
                      'Visit Hotel website',
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
                Row(
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                          color: Theme.of(context).disabledColor,
                          fontWeight: FontWeight.bold,
                          fontSize: AppSize.s20
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '98\$/Night',
                      style: TextStyle(
                          color: Theme.of(context).disabledColor,
                          fontWeight: FontWeight.bold,
                          fontSize: AppSize.s20
                      ),
                    ),
                  ],
                ),
                const Divider(),
                SizedBox(height: AppSize.s10.h,),
                Text(
                  'Opening our doors for the first time in 2009, we have strived to become Luxury Adult Only Resort who is providing upscale hospitality from the heart. Through authenticity and care, we created unique memorable experiences for our guests that will be treasured for a lifetime. Over the past decade we have became destination of choice to our guests and will continue to do so for years to come. Our secret lays in our incredible team who put the soul in hospitality every day. The needs of our guests are in the forefront of everything we do. Located in Sahl Hasheesh on Egypt Red Sea coast, an area made internationally famous by the combination of its clear skies',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontSize: AppSize.s16.sp,
                    fontWeight: FontWeight.w400,
                  ),

                ),
                SizedBox(height: AppSize.s10.h,),
                Row(
                  children: [
                    Container(
                      width: 150.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Colors.grey,
                      ),
                      child:const  Center(child:  Text('Check in'))
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Container(
                      width: 150.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Colors.grey,
                      ),
                      child:Center(child: Text('Check Out'))
                    ),
                  ],
                ),
                SizedBox(height: AppSize.s10.h,),
                Center(
                  child: Container(
                      width: 150.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Colors.grey,
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(' Guests'),
                          DropdownButton<String>(
                            items: numberPersons.map((e) => DropdownMenuItem(
                              value: e,
                              child:  Text(e,style: TextStyle(
                                color: Theme.of(context).disabledColor,
                                fontWeight: FontWeight.bold,
                                fontSize: AppSize.s20,
                              ),),
                            )).toList(),
                            onChanged: (value){
                              setState(() {
                                numPerson=value!;
                              });
                            },
                            value: numPerson,
                          ),
                        ],
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
          child: BestStayingList(),
        ),
      ],
    );
  }
}
