import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ShadThemeData(
    brightness: Brightness.light,
    colorScheme: const ShadColorScheme(
      primary: Color(0xFF0F172A), // Slate 900
      secondary: Color(0xFFF1F5F9), // Slate 100
      destructive: Color(0xFFEF4444), // Red 500
      background: Color(0xFFFFFFFF),
      foreground: Color(0xFF0F172A),
      card: Color(0xFFFFFFFF),
      cardForeground: Color(0xFF0F172A),
      popover: Color(0xFFFFFFFF),
      popoverForeground: Color(0xFF0F172A),
      primaryForeground: Color(0xFFF8FAFC),
      secondaryForeground: Color(0xFF0F172A),
      muted: Color(0xFFF1F5F9),
      mutedForeground: Color(0xFF64748B),
      accent: Color(0xFFF1F5F9),
      accentForeground: Color(0xFF0F172A),
      destructiveForeground: Color(0xFFF8FAFC),
      border: Color(0xFFE2E8F0),
      input: Color(0xFFE2E8F0),
      ring: Color(0xFF0F172A),
      selection: Color(0xFFB4D5FE),
    ),
    textTheme: ShadTextTheme(
      family: GoogleFonts.inter().fontFamily,
    ),
  );

  static final darkTheme = ShadThemeData(
    brightness: Brightness.dark,
    colorScheme: const ShadColorScheme(
      primary: Color(0xFFF8FAFC), // Slate 50
      secondary: Color(0xFF1E293B), // Slate 800
      destructive: Color(0xFF7F1D1D), // Red 900
      background: Color(0xFF020617), // Slate 950
      foreground: Color(0xFFF8FAFC),
      card: Color(0xFF020617),
      cardForeground: Color(0xFFF8FAFC),
      popover: Color(0xFF020617),
      popoverForeground: Color(0xFFF8FAFC),
      primaryForeground: Color(0xFF0F172A),
      secondaryForeground: Color(0xFFF8FAFC),
      muted: Color(0xFF1E293B),
      mutedForeground: Color(0xFF94A3B8),
      accent: Color(0xFF1E293B),
      accentForeground: Color(0xFFF8FAFC),
      destructiveForeground: Color(0xFFF8FAFC),
      border: Color(0xFF1E293B),
      input: Color(0xFF1E293B),
      ring: Color(0xFFCBD5E1),
      selection: Color(0xFF1E293B),
    ),
    textTheme: ShadTextTheme(
      family: GoogleFonts.inter().fontFamily,
    ),
  );
}
