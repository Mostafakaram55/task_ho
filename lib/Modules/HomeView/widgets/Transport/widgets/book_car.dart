
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/Manager/App_size.dart';
import '../../../../../core/Manager/Color_Manager.dart';
import '../../../../../core/icons.dart';

class BookCar extends StatelessWidget {
  const BookCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            IconBroken.Arrow___Left,
            size: AppSize.s30,
            color: Colors.white,
          ),
        ),
        backgroundColor: ColorManager.buttonColor,
        title: const Text(
          'Zagazig',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: AppSize.s18
          ),
        ),
      ),
      body:  Padding(
        padding:  EdgeInsets.all(8.0.sp),
        child: Column(
          children: [
            SizedBox(height: 20.sp,),
            Material(
              elevation: 3,
              child: Container(
                height: 270.h,
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
                              InkWell(
                                onTap: (){
                                  //event
                                },
                                child: const Text(
                                  'View On Map',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.sp,),
                            ],
                          ),
                        ],
                      ),

                      InkWell(
                        onTap: (){
                          //event
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
                      SizedBox(height:10 .h,),
                      const Text(
                          'Price For 3 Days',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text('2,767 EGP', style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
