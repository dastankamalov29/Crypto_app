

import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        dividerColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.deepPurple,
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.4),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      );