
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/SignUp_view/view_model/cubit.dart';
import 'package:task_ho/Modules/SignUp_view/view_model/states.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Manager/Color_Manager.dart';
import '../../../core/Manager/assets_manager.dart';
import '../../../core/const.dart';
import '../../../core/icons.dart';
import '../../logIn_view/widgets/social_item.dart';

class RegisterBody extends StatelessWidget {
   RegisterBody({Key? key}) : super(key: key);
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterStates>(
      listener: ((context, state) {

      }),
      builder: (context,state){
        return  SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: AppSize.s20.h,
                  ),
                  Text(
                    'Create Account',
                    style: TextStyle(
                        color: Theme.of(context).disabledColor,
                        fontSize: AppSize.s30.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s20.h,
                  ),
                  Text(
                    'To get Started Now!',
                    style: TextStyle(
                        color: Theme.of(context).disabledColor,
                        fontSize: AppSize.s20.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:AppPadding.p30),
                    child:defaultFormFiled(
                      submitted:( String value){
                        //print(value);
                      },
                      text: 'Email',
                      controller: registerEmailController,
                      type: TextInputType.emailAddress,
                      prefixIcon:Icon(
                        IconBroken.Message,
                        color: ColorManager.gray,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:AppPadding.p30),
                    child: defaultFormFiled(
                        submitted: ( String value){
                          //print(value);
                        },
                        obscure: RegisterCubit.get(context).chick,
                        text: 'Password',
                        type: TextInputType.visiblePassword,
                        controller: registerPasswordController,
                        prefixIcon:  Icon(
                          IconBroken.Lock,
                          color: ColorManager.gray,
                        ),
                        suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          onPressed: (){
                            RegisterCubit.get(context).changIcon();
                          },
                          icon: RegisterCubit.get(context).chick?Icon(
                            Icons.visibility_off,
                            color: ColorManager.buttonColor,
                          ):Icon(Icons.visibility, color: ColorManager.buttonColor,),
                        )
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:AppPadding.p30),
                    child:defaultFormFiled(
                      submitted:( String value){
                        //print(value);
                      },
                      text: 'UserName',
                      controller: registerNameController,
                      type: TextInputType.emailAddress,
                      prefixIcon:Icon(
                        IconBroken.Profile,
                        color: ColorManager.gray,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                    child:defaultButton(
                        textColor: ColorManager.primary,
                        color: ColorManager.buttonColor,
                        text: 'Sign Up',
                        w:357.w,
                        h: 53.h,
                        borderRadius:BorderRadius.circular(AppSize.s14.sp),
                        function: (){
                          if(formKey.currentState!.validate())
                          {
                            //event.......??
                          }
                        }
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s20.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:AppPadding.p55.sp),
                    child: Row(
                      children: [
                        SizedBox(
                          width: AppSize.s100.w,
                          child: Divider(
                            color: ColorManager.buttonColor,
                            height: AppSize.s40.h,
                            thickness: 1,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'OR',
                        ),
                        const  Spacer(),
                        SizedBox(
                          width: AppSize.s100.w,
                          child: Divider(
                            color: ColorManager.buttonColor,
                            height: AppSize.s40.h,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButtonSocial(
                    assetImage: AssetData.g,
                    radius: AppSize.s6.sp,
                    textOption: 'Login Wth Google',
                  ),
                  SizedBox(height: AppSize.s12.sp,),
                  CustomButtonSocial(
                    assetImage: AssetData.f,
                    radius: AppSize.s6.sp,
                    textOption:'Login With Facebook',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have An Account"),
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Log In Now',
                          style: TextStyle(
                            color:ColorManager.buttonColor,
                            fontSize: AppSize.s16.sp,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
