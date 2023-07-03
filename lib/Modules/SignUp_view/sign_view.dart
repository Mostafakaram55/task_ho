import 'package:flutter/material.dart';
import 'package:task_ho/Modules/SignUp_view/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  RegisterBody(),
    );
  }
}
