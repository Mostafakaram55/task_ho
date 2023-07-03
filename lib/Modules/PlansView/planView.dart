
import 'package:flutter/material.dart';

import 'Widgets/plans_view_body.dart';

class PlansView extends StatelessWidget {
  const PlansView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PlansBody(),
    );
  }
}
