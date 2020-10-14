import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color
const Color tealColor = Colors.teal;
const Color redAccent = Colors.redAccent;
final Color blueOpacity = Colors.blue.withOpacity(0.9);
const Color amberAccent = Colors.amberAccent;
const Color purpleAccent = Colors.deepPurpleAccent;
final Color greenAccent = Colors.greenAccent[200];
const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;
const Color greyColor = Colors.grey;

//Icon
final Icon icon1 = Icon(Icons.hdr_weak, size: 50, color: whiteColor);
final Icon icon2 = Icon(Icons.import_contacts, size: 50);

//text
TextStyle blackTextFont = GoogleFonts.poppins()
    .copyWith(color: blackColor, fontWeight: FontWeight.w500);
TextStyle blackTextFont2 = GoogleFonts.poppins()
    .copyWith(color: blackColor, fontWeight: FontWeight.w300);
TextStyle whiteTextFont = GoogleFonts.poppins()
    .copyWith(color: whiteColor, fontWeight: FontWeight.w500);
TextStyle greyTextFont = GoogleFonts.poppins()
    .copyWith(color: greyColor, fontWeight: FontWeight.w300);
TextStyle poppinsStyle = GoogleFonts.poppins();
