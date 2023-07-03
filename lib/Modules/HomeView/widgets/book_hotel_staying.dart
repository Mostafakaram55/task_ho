import 'package:flutter/material.dart';

import 'book_hotel_staying_body.dart';

class BookHotelStaying extends StatelessWidget {
  const BookHotelStaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body:  BookHotelStayingBody(),
    );
  }
}
