import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ho/Modules/ForumView/forum_view.dart';
import 'package:task_ho/Modules/HomeView/HomeView.dart';
import 'package:task_ho/Modules/PlansView/planView.dart';
import 'package:task_ho/Modules/ProfileView/profileview.dart';
import 'package:task_ho/Modules/Search_screen/SearchView.dart';
import 'package:task_ho/controller/App_states.dart';

import '../core/icons.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit():super (InitialState());
  static AppCubit get(BuildContext context)=>BlocProvider.of(context);
  int currentIndex=0;
  List<Widget> screens=[
    const HomeView(),
    const SearchView(),
    const PlansView(),
    const ForumView(),
    const ProfileView(),

  ];
  List<IconData>icons=[
    IconBroken.Home,
    IconBroken.Search,
   // IconBroken.Heart,
    IconBroken.Edit,
    IconBroken.Profile,
  ];
  void changeIndex(int index){
    currentIndex=index;
    emit(ChangeButtonState());
  }
}