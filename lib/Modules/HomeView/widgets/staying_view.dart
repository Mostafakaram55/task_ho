import 'package:flutter/material.dart';
import 'package:task_ho/Modules/HomeView/widgets/staying_view_body.dart';

class StayingView extends StatelessWidget {
  const StayingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: StayingViewBody(),
    );
  }
}
