import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/main.dart';
import 'package:hotels/main_screens/calendar_page.dart';
import 'package:hotels/main_screens/variableConst.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4.0,
                          offset: Offset(0, 3))
                    ]),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Kinshasa ...',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none),
                ),
              )),
              SizedBox(width: 10.0),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4.0,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CalendarPage();
                        },
                      ),
                    )
                  },
                  child: Icon(
                    Icons.search,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      primary: d_green),
                ),
              ),
            ],
          ),
          // SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose date',
                      style: GoogleFonts.nunito(
                          color: Colors.grey, fontSize: 15.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '12 Dec - 22 Dec',
                      style: GoogleFonts.nunito(
                          color: Colors.black, fontSize: 17.0),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Number of Rooms',
                      style: GoogleFonts.nunito(
                          color: Colors.grey, fontSize: 15.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '1 Room - 2 Adults',
                      style: GoogleFonts.nunito(
                          color: Colors.black, fontSize: 17.0),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
