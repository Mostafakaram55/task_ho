import 'package:flutter/material.dart';
import 'package:task_ho/Modules/logIn_view/widgets/loginBody.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:LogInViewBody() ,
    );
  }
}