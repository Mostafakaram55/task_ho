import 'package:flutter/material.dart';
import 'package:task_ho/Modules/SignUp_view/sign_view.dart';
import 'package:task_ho/Modules/logIn_view/view_model/cubit.dart';
import 'package:task_ho/Modules/logIn_view/widgets/social_item.dart';
import 'package:task_ho/core/Manager/assets_manager.dart';

import '../../../core/Manager/App_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/Manager/Color_Manager.dart';
import '../../../core/const.dart';
import '../../../core/icons.dart';
import '../view_model/states.dart';
class LogInViewBody extends StatelessWidget {
   LogInViewBody({Key? key}) : super(key: key);
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit,LogInStates>(
      listener: ((context, state) {}
      ),
      builder: (context,state){
        return SafeArea(
          child: SingleChildScrollView(
            physics:const  BouncingScrollPhysics(),
            child: Form(
              key:formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: AppSize.s75.sp,),
                  Text(
                      'LogIn',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: AppSize.s30.sp
                      )
                  ),
                  SizedBox(height: AppSize.s40.sp,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:AppPadding.p30),
                    child:defaultFormFiled(
                      submitted:( String value){
                        print(value);
                      },
                      text: 'Email',
                      controller: usernameController,
                      type: TextInputType.emailAddress,
                      prefixIcon:Icon(
                        IconBroken.Message,
                        color: ColorManager.gray,
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.s30.sp,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:AppPadding.p30),
                    child: defaultFormFiled(
                        submitted: ( String value){
                          //print(value);
                        },
                        obscure: LogInCubit.get(context).chick,
                        text: 'Password',
                        type: TextInputType.visiblePassword,
                        controller: passwordController,
                        prefixIcon:  Icon(
                          IconBroken.Lock,
                          color: ColorManager.gray,
                        ),
                        suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          onPressed: (){
                            LogInCubit.get(context).changIcon();
                          },
                          icon: LogInCubit.get(context).chick?Icon(
                            Icons.visibility_off,
                            color: ColorManager.buttonColor,
                          ):Icon(Icons.visibility, color: ColorManager.buttonColor,),
                        )
                    ),
                  ),
                  SizedBox(height: AppSize.s8.sp,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: AppPadding.p22.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Expanded(
                          child: Row(children: [
                            Checkbox(
                              splashRadius: 10.sp,
                              hoverColor: ColorManager.primary,
                              checkColor: ColorManager.buttonColor,
                              activeColor: ColorManager.secondColor,
                              focusColor: ColorManager.primary,
                              fillColor: MaterialStateProperty.all(ColorManager.secondColor),
                              value: false,
                              onChanged:(value){},
                            ),
                            Text(
                              'RememberMe'
                              ,style: TextStyle(
                                color: ColorManager.black
                            ),
                            ),
                          ],),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: (){}, child: Text(
                            'ForgotPassword',
                            style: TextStyle(
                                color:ColorManager.buttonColor,
                                fontSize: AppSize.s16.sp
                            ),
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: AppSize.s8.sp,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                    child:defaultButton(
                        textColor: ColorManager.primary,
                        color: ColorManager.buttonColor,
                        text: 'LogIn',
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
                  SizedBox(height: AppSize.s12.sp,),
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
                  SizedBox(height: AppSize.s12.sp,),
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
                      const Text("Dont' have An Account"),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterView()));
                        },
                        child: Text(
                          'Sign Up Now',
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
