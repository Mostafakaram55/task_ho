import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Manager/Color_Manager.dart';
final usernameController=TextEditingController();
final passwordController=TextEditingController();
final registerPasswordController=TextEditingController();
final registerEmailController=TextEditingController();
final registerNameController=TextEditingController();
Widget defaultButton({
  double w=AppSize.s357,
  double h=AppSize.s53,
  dynamic function,
  Color?  color,
  String? text,
  BorderRadius? borderRadius,
  // Color? borderColor,
  Color? textColor=Colors.white,
})=> Container(
  width:w.w ,
  height: h.h,
  decoration: BoxDecoration(
    borderRadius: borderRadius,
    color: color,
  ),
  child: MaterialButton(
    onPressed: function,
    child: Text(
      text!.toUpperCase(),
      style: TextStyle(
        color:  textColor,
        fontSize: AppSize.s18.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);
Widget defaultFormFiled({
  required String? text,
  required TextEditingController? controller,
  required TextInputType? type,
  Icon? prefixIcon,
  IconButton? suffixIcon,
  dynamic submitted,
  bool obscure=false,
})=>TextFormField(
  onFieldSubmitted:submitted,
  validator:(value){
    if(value!.isEmpty){
      return 'An empty field of data';
    }
  },
  style: TextStyle(
      color: ColorManager.gray
  ),
  obscureText: obscure,
  controller:controller ,
  keyboardType: type,
  cursorColor:ColorManager.buttonColor,
  decoration: InputDecoration(
    prefixIcon:prefixIcon,
    suffixIcon: suffixIcon,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    hintText: text,
    hintStyle: TextStyle(
        color: ColorManager.lightGrayOver
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: ColorManager.secondColor
        )
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: ColorManager.primary
        )
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: ColorManager.primary
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorManager.error,
      ),
    ),
    fillColor: ColorManager.secondColor,
    filled: true,
    hoverColor: ColorManager.secondColor,
  ),

);