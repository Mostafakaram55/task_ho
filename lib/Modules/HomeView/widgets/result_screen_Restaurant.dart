
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/ResultScreenRestaurant_body.dart';

class ResultScreenRestaurant extends StatelessWidget {
  const ResultScreenRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body:const ResultScreenRestaurantBody() ,
    );
  }
}
