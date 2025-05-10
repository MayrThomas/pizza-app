import 'package:flutter/material.dart';

enum Diet {
  vegetarian(text: "VEG", color: Colors.lightGreen),
  pescetarian(text: "PESCE", color: Colors.lightBlue),
  omnivore(text: "OMNI", color: Colors.red);

  const Diet({
    required this.text,
    required this.color
  });

  final String text;
  final MaterialColor color;

  static Diet fromString(String value) {
    return switch(value) {
      "pescetarian" => Diet.pescetarian,
      "omnivore" => Diet.omnivore,
      _ => Diet.vegetarian
    };
  }
}