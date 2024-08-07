import 'package:flutter/material.dart';

class ContactAppTheme {
  static const Color _gray = Color(0xff9e9e9e);

  static final ThemeData _lightTheme = ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: _gray,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1000),
              borderSide: const BorderSide(width: 2, color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1000),
              borderSide: const BorderSide(width: 2, color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1000),
              borderSide: const BorderSide(width: 2, color: Colors.white)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1000),
              borderSide: const BorderSide(width: 2, color: Colors.white)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1000),
              borderSide: const BorderSide(width: 2, color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1000),
              borderSide: const BorderSide(width: 2, color: Colors.red)),
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
        suffixIconColor: Colors.blue
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.black)
      )
    )
  );

  static ThemeData get lightTheme => _lightTheme;
}
