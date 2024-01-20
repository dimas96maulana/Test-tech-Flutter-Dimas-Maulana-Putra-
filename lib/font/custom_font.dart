import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFont{
  static TextStyle robotoSize8Weight400({required Color color})=> GoogleFonts.roboto(
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle robotoSize8Weight700({required Color color})=> GoogleFonts.roboto(
    fontSize: 8.sp,
    fontWeight: FontWeight.w700,
    color: color,
  );

  static TextStyle robotoSize10Weight400({required Color color})=> GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle robotoSize10Weight700({required Color color})=> GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    color: color,
  );

  static TextStyle robotoSize12Weight700({required Color color})=> GoogleFonts.roboto(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: color,
  );

  static TextStyle robotoSize14Weight700({required Color color})=> GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: color,
  );
}