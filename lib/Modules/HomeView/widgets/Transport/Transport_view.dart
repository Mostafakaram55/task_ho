import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/Transport/widgets/Transport_view_body.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:task_ho/core/Manager/Color_Manager.dart';
import 'package:task_ho/core/icons.dart';

class TransportView extends StatelessWidget {
  const TransportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            IconBroken.Arrow___Left,
            size: AppSize.s30,
            color: Colors.white,
          ),
        ),
        backgroundColor: ColorManager.buttonColor,
        title: const Text(
            'Rental Cars',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: AppSize.s18
          ),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: const TransportBody(),
    );
  }
}
