enum SpiceLevel {
  balanced(text: "Balanced"),
  spicy(text: "🌶️ Spicy"),
  extraHot(text: "🌶️🌶️️ Extra Hot");

  const SpiceLevel({
    required this.text
  });

  final String text;

  static SpiceLevel fromString(String value) {
    return switch(value) {
      "spicy" => SpiceLevel.spicy,
      "extraHot" => SpiceLevel.extraHot,
      _ => SpiceLevel.balanced
    };
  }
}