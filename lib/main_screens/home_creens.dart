import 'package:flutter/material.dart';
import 'package:hotels/main_screens/appBar_screen.dart';
import 'package:hotels/main_screens/hotelSection_screen.dart';
import 'package:hotels/main_screens/search_screen.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [SearchSection(), HotelSection()],
        ),
      ),
    );
  }
}
