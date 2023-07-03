
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../core/Manager/App_size.dart';
import 'widgets/homeview_body.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Padding(
          padding:  EdgeInsets.all(8.0.sp),
          child: SizedBox(
            height: 25.h,
            child: Lottie.network(
              'https://assets8.lottiefiles.com/packages/lf20_toeknp4d.json',
            ),
          ),
        ),
        elevation: 0,
        title:   Text(
          'Explore Egypt',
          style: GoogleFonts.montserrat(
            color:Theme.of(context).disabledColor,
            fontSize: AppSize.s18.sp,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: const HomeBody(),
    );
  }
}
