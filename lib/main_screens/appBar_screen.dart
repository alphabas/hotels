import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20.0,
        ),
        onPressed: () => {},
      ),
      title: Text('Explore',
          // textAlign: Alig,
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 22.0,
            fontWeight: FontWeight.w800,
          )),
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20.0,
          ),
          onPressed: () => {},
        ),
        IconButton(
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20.0,
          ),
          onPressed: () => {},
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}
