import 'package:flutter/cupertino.dart';
import 'package:task_ho/Modules/logIn_view/view_model/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LogInCubit extends Cubit<LogInStates>{
  LogInCubit():super (InitialStates());
  static LogInCubit get(BuildContext context)=>BlocProvider.of(context);
  bool chick=false;
  void changIcon(){
    chick=!chick;
    emit(ChangeIconStates());
  }

}