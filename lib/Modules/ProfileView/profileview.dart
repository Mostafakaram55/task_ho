
import 'package:flutter/material.dart';
import 'package:task_ho/Modules/ProfileView/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileBody(),
    );
  }
}
