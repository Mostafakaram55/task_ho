import 'package:flutter/material.dart';
import 'package:task_ho/Modules/Home_layout/home_screen.dart';
import 'package:task_ho/Modules/SignUp_view/view_model/cubit.dart';
import 'package:task_ho/Modules/logIn_view/view_model/cubit.dart';
import 'package:task_ho/Modules/splashView/splash_view.dart';
import 'package:task_ho/controller/App_cubit.dart';
import 'package:task_ho/controller/App_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ho/core/Theme/theme_dark.dart';

import 'Modules/HomeView/widgets/Trips/Tips_resulte.dart';
import 'Modules/HomeView/widgets/Trips/Trips_view.dart';
import 'Modules/HomeView/widgets/book_hotel_staying.dart';
import 'Modules/logIn_view/login_view.dart';
import 'core/Manager/route_manager.dart';
import 'core/Theme/theme_llight.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(BuildContext context, Widget? child){
        return  MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppCubit()),
            BlocProvider(create: (context) => LogInCubit()),
            BlocProvider(create: (context) => RegisterCubit()),
          ],
          child: BlocBuilder<AppCubit,AppStates>(
            builder: (context,state){
              return MaterialApp(
                //initialRoute:NameRout.plansRoute,
                onGenerateRoute: RouteGenerator.getRout,
                debugShowCheckedModeBanner: false,
                theme:  getThemeDataLight(),
               // home: const Tips(),
              );
            },
          ),
        );
      },
    );
  }
}

