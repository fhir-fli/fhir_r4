/// Extension methods for the [int] class.
extension FhirPathIntExtension on int {
  /// Checks if the object has user data for a given key.
  bool isWhitespace() {
    return this == 0x20 || this == 0x09 || this == 0x0A || this == 0x0D;
  }

  /// Checks if the object has user data for a given key.
  // ignore: non_constant_identifier_names
  bool get between_A_Z => this >= 65 && this <= 90;

  /// Checks if the object has user data for a given key.
  // ignore: non_constant_identifier_names
  bool get between_a_z => this >= 97 && this <= 122;

  /// Checks if the object has user data for a given key.
  bool get between_0_9 => this >= 48 && this <= 57;
}
