import 'package:flutter/material.dart';
import 'package:task_ho/Modules/Search_screen/widgets/searchview_boody.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SearchBody(),
    );
  }
}
