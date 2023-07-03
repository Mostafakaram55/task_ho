import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ho/Modules/SignUp_view/view_model/states.dart';
class RegisterCubit extends Cubit<RegisterStates>{
  RegisterCubit():super (InitialStates());
  static RegisterCubit get(BuildContext context)=>BlocProvider.of(context);
  bool chick=false;
  void changIcon(){
    chick=!chick;
    emit(ChangeIconStates());
  }

}