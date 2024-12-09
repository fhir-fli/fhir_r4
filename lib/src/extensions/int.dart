/// Extension methods for the [int] class.
extension FhirPathIntExtension on int {
  /// Checks if the object has user data for a given key.
  bool isWhitespace() {
    return this == 0x20 || this == 0x09 || this == 0x0A || this == 0x0D;
  }
}
