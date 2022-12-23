import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

const d_green = Color(0xFF54D3C3);
final kNow = DateTime.now();
final kFirstDay = DateTime(kNow as int, kNow.month - 3, kNow.day);
final kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);

final List hotelList = [
  {
    'title': 'Grand royal Hotel',
    'place': 'Stadium wembley',
    'distance': 2,
    'review': 36,
    'picture': 'assets/images/hotel_1.png',
    'price': '100'
  },
  {
    'title': 'Queen kin Hotel',
    'place': 'Stadium stamford',
    'distance': 1.4,
    'review': 34,
    'picture': 'assets/images/hotel_2.png',
    'price': '300'
  },
  {
    'title': 'Kabal state Hotel',
    'place': 'Stadium wembley',
    'distance': 5,
    'review': 36,
    'picture': 'assets/images/hotel_3.png',
    'price': '230'
  },
  {
    'title': 'Hiyusi royal Hotel',
    'place': 'Martyr stadium',
    'distance': 4,
    'review': 32,
    'picture': 'assets/images/hotel_4.png',
    'price': '18'
  }
];

const descLogin = 'Enter your credential to login';
const titleLogin = 'Welcome Back';
