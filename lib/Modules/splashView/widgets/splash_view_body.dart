
import 'package:flutter/material.dart';

import '../../../core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Manager/assets_manager.dart';
import '../../../core/Manager/route_manager.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override

  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Image.asset(
          AssetData.splashImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppSize.s75.sp),
          child: Text(
              'Booking',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: AppSize.s20.sp,
                fontWeight: FontWeight.bold
              )

          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppSize.s60.sp),
          child: const Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: CircularProgressIndicator(
                color: Colors.white,
              )),
        ),
      ],
    );
  }

  void nextPage() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, NameRout.homeRoute);
    });

    //   if(Shared.getDate(key:'uId')!=null)
    //   {
    //     Navigator.pushReplacementNamed(context, NameRout.homeRoute);
    //   }else{
    //     Navigator.pushReplacementNamed(context, NameRout.loginRoute);
    //   }
    // });

  }
}
