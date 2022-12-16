import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/main.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
            size: 20.0,
          ),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MyApp();
                },
              ),
            ),
          },
        ),
        centerTitle: true,
        title: Text(
          'Calendar',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CalendarDatePicker2(
            //   config: CalendarDatePicker2Config(
            //     calendarType: CalendarDatePicker2Type.range,
            //   ),
            //   onValueChanged: (dates) => {},
            //   initialValue: [],
            // )

            // PeriodSection(),
            // CalendarRange(),
            // ValidateBookingSection(),
          ],
        ),
      ),
    );
  }
}
