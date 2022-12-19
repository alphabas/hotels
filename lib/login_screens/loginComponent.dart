// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24.0),
          child: Column(children: [
            _header(context),
            SizedBox(
              height: 20,
            ),
            _inputField(context),
            SizedBox(height: 5.0),
            _forgotPassword(context),
            _signUp(context),
          ]),
        ),
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20.0,
            ),
            onPressed: () => {},
          ),
          title: Text(
            'Login',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }

  _header(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 40.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          'Enter your credential to login',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  _inputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Username.',
              // contentPadding: EdgeInsets.all(5.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefix: Icon(Icons.person)),
        ),
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
              hintText: 'Password.',
              // contentPadding: EdgeInsets.all(5.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefix: Icon(Icons.key_off_sharp)),
          obscureText: true,
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () => {},
          child: Text(
            'LOGIN',
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

  _forgotPassword(BuildContext context) {
    return TextButton(onPressed: () => {}, child: Text('Forgot password'));
  }

  _signUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Dont have an account ?'),
        TextButton(onPressed: () => {}, child: Text('Sign Up'))
      ],
    );
  }
}
