import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan-normal',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan-normal',
  fontSize: 40.0,
);

const cityTextStyle = TextStyle(
  fontFamily: 'Spartan-bold',
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Segoe-bold',
);

const kConditionTextStyle = TextStyle(
  fontFamily: 'Segoe-normal',
  fontSize: 50.0,
);

const textFieldInputStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter city name',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none),
);

final backgroundGradient = LinearGradient(
    tileMode: TileMode.repeated,
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.blueGrey[900], Color(0xFF012431)]);
