import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/main_screens/hotelCard_screen.dart';
import 'package:hotels/main_screens/variableConst.dart';

class HotelSection extends StatelessWidget {
  const HotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            // color: Colors.transparent,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '350 Hotels founds',
                  style: GoogleFonts.nunito(color: Colors.black, fontSize: 15),
                ),
                Row(
                  children: [
                    Text(
                      'Filters',
                      style:
                          GoogleFonts.nunito(color: Colors.black, fontSize: 15),
                    ),
                    IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          Icons.filter_list_outlined,
                          color: d_green,
                          size: 25,
                        ))
                  ],
                )
              ],
            ),
          ),
          Column(
            children: hotelList.map((current) {
              return HotelCard(current);
            }).toList(),
          )
        ],
      ),
    );
  }
}
