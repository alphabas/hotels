import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Create an account',
          style: GoogleFonts.nunito(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(children: [
          _headers(context),
          SizedBox(height: 10.0),
          _inputFields(context),
        ]),
      ),
    ));
  }

  _headers(BuildContext context) {
    return Column(
      children: [
        Text(
          'Create Account',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 40.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          'Credentials ID space to created',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'FirstName',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              prefix: Icon(Icons.person_2)),
        ),
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              prefix: Icon(Icons.person_2)),
        ),
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              prefix: Icon(Icons.ac_unit_outlined)),
        ),
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              prefix: Icon(Icons.key_off_rounded)),
          obscureText: true,
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () => {},
          child: Text(
            'REGISTER',
            style: GoogleFonts.nunito(
              fontSize: 17.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 10.0)),
        )
      ],
    );
  }
}
