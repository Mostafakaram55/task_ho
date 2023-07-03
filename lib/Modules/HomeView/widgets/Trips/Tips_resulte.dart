
import 'package:flutter/material.dart';

import 'Trips_resulteBody.dart';

class TipsRuselte extends StatelessWidget {
  const TipsRuselte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: const TripsResulteBody(),
    );
  }
}
