// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Exception codes.
@collection
class ExceptionCodes {
  /// Constructor for internal use (like enum)
  ExceptionCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExceptionCodes values
  /// student
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExceptionCodes student = ExceptionCodes(
    fhirCode: 'student',
  );

  /// disabled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExceptionCodes disabled = ExceptionCodes(
    fhirCode: 'disabled',
  );

  /// For instances where an Element is present but not value

  static final ExceptionCodes elementOnly = ExceptionCodes();

  /// List of all enum-like values
  static final List<ExceptionCodes> values = [
    student,
    disabled,
  ];

  /// Returns the enum value with an element attached
  ExceptionCodes withElement(Element? newElement) {
    return ExceptionCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExceptionCodes] from JSON.
  static ExceptionCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExceptionCodes.elementOnly.withElement(element);
    }
    return ExceptionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExceptionCodes.$fhirCode';
}
