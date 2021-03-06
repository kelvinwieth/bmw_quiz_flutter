import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizStyles {
  static final resultMessageTextStyle = GoogleFonts.exo(
    textStyle: const TextStyle(
      fontSize: 40,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
    ),
  );

  static final optionButtonTextStyle = GoogleFonts.exo(
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  );

  static final resultPercentageTextStyle = GoogleFonts.exo(
    textStyle: const TextStyle(
      fontSize: 60,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  );

  static final restartTextStyle = GoogleFonts.exo(
    textStyle: const TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
  );

  static final quizAppBar = AppBar(
    backgroundColor: Colors.white.withOpacity(0.5),
    centerTitle: true,
    title: Text(
      'BMW Quiz',
      style: GoogleFonts.exo(
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );

  static final questionOptionButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.grey.shade200.withOpacity(0.9),
    padding: const EdgeInsets.all(12),
    elevation: 0,
  );
}
