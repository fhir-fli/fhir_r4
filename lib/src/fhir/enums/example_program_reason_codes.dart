// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Program Reason Span codes.
@collection
class ExampleProgramReasonCodes {
  /// Constructor for internal use (like enum)
  ExampleProgramReasonCodes({this.fhirCode, this.element})
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

  /// ExampleProgramReasonCodes values
  /// as_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProgramReasonCodes as_ = ExampleProgramReasonCodes(
    fhirCode: 'as',
  );

  /// hd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProgramReasonCodes hd = ExampleProgramReasonCodes(
    fhirCode: 'hd',
  );

  /// auscr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProgramReasonCodes auscr = ExampleProgramReasonCodes(
    fhirCode: 'auscr',
  );

  /// none
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProgramReasonCodes none = ExampleProgramReasonCodes(
    fhirCode: 'none',
  );

  /// For instances where an Element is present but not value

  static final ExampleProgramReasonCodes elementOnly =
      ExampleProgramReasonCodes();

  /// List of all enum-like values
  static final List<ExampleProgramReasonCodes> values = [
    as_,
    hd,
    auscr,
    none,
  ];

  /// Returns the enum value with an element attached
  ExampleProgramReasonCodes withElement(Element? newElement) {
    return ExampleProgramReasonCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleProgramReasonCodes] from JSON.
  static ExampleProgramReasonCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProgramReasonCodes.elementOnly.withElement(element);
    }
    return ExampleProgramReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleProgramReasonCodes.$fhirCode';
}
