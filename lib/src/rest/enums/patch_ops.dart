/// Enum for JSON Patch and FHIR Patch operations
enum PatchOps {
  /// Add a new value to the target
  add,

  /// Remove a value from the target
  remove,

  /// Replace the target with a new value
  replace,

  /// Move a value from one location to another
  move, // JSON Patch specific

  /// Copy a value from one location to another
  copy, // JSON Patch specific

  /// Test that the target value is equal to a specified value
  test, // JSON Patch specific
  ;

  /// Convert the enum value to its string representation
  String get value => toString().split('.').last;
}
