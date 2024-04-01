import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_ticket/utils/theme_ext.dart';

final themeData = ThemeData(
  useMaterial3: true,
  textTheme: GoogleFonts.nunitoSansTextTheme(),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.indigo,
    accentColor: Colors.yellowAccent,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.indigo,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: ERROR_COLOR,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: ERROR_COLOR,
      ),
    ),
    prefixIconColor:
        MaterialStateColor.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.error)) {
        return ERROR_COLOR;
      }

      if (states.contains(MaterialState.focused)) {
        return Colors.indigo;
      }

      return Colors.black;
    }),
    suffixIconColor:
        MaterialStateColor.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.error)) {
        return ERROR_COLOR;
      }

      if (states.contains(MaterialState.focused)) {
        return Colors.indigo;
      }

      return Colors.black;
    }),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
