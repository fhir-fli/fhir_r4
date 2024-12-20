part of 'library.dart';

/// A code or group definition that describes the intended subject of the
/// contents of the library.
sealed class SubjectXLibraryLibrary extends DataType {}

/// A code or group definition that describes the intended subject of the
/// contents of the library.
class CodeableConceptSubjectLibraryLibrary extends CodeableConcept
    implements SubjectXLibraryLibrary {
  /// Factory constructor for super class
  factory CodeableConceptSubjectLibraryLibrary.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptSubjectLibraryLibrary;
}

/// A code or group definition that describes the intended subject of the
/// contents of the library.
class ReferenceSubjectLibraryLibrary extends Reference
    implements SubjectXLibraryLibrary {
  /// Factory constructor for super class
  factory ReferenceSubjectLibraryLibrary.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceSubjectLibraryLibrary;
}
