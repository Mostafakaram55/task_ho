import 'package:flutter/material.dart';
import 'package:task_ho/controller/App_cubit.dart';
import 'package:task_ho/controller/App_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:task_ho/core/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/Manager/App_size.dart';
import '../../core/Manager/Color_Manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state)=>{},
      builder: (context,state){
        AppCubit cubit=AppCubit.get(context);
        return  Scaffold(
          //backgroundColor: Theme.of(context).primaryColor,
          body:cubit.screens[cubit.currentIndex],
          floatingActionButton: FloatingActionButton(
            backgroundColor: ColorManager.buttonColor,
            elevation: 5,
            onPressed:(){
              //Navigator.pushNamed(context, NameRout.postsView);
            },
            splashColor:ColorManager.buttonColor,
            child: const Icon(
                IconBroken.Heart
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            activeColor: Theme.of(context).disabledColor,
            splashColor: Colors.transparent,
            elevation: 5,
            borderColor: Colors.transparent,
            inactiveColor: Theme.of(context).cardColor,
            height: AppSize.s60.h,
            backgroundColor: Theme.of(context).backgroundColor,
            icons:cubit.icons,
            activeIndex:cubit.currentIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.sharpEdge,
            leftCornerRadius:0,
            rightCornerRadius: 0,
            blurEffect: true,
            onTap: (index){
              cubit.changeIndex(index);
            },
            //other params
          ),
        );

      },
    );

  }

}
