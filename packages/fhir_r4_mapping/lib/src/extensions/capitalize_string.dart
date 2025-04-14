/// Extension on String to provide a method for capitalizing the first letter.
extension Capitalize on String {
  /// Capitalizes the first letter of the string.
  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this;
    }
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
