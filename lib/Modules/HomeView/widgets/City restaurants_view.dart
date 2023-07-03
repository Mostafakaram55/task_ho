
import 'package:flutter/material.dart';
import 'package:task_ho/core/Manager/App_size.dart';
import 'package:task_ho/core/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Cityrestaurants_litem.dart';

class CityRestaurantsView extends StatelessWidget {
  const CityRestaurantsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: const CityRestaurantsBody(),
    );
  }
}
