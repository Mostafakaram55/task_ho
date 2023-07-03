
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/Restaurant%20_body.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,
      body:const RestaurantBody(),
    );
  }
}

