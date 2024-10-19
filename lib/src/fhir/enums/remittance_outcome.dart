// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The outcome of the processing.
@collection
class RemittanceOutcome {
  /// Constructor for internal use (like enum)
  RemittanceOutcome({this.fhirCode, this.element})
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

  /// RemittanceOutcome values
  /// queued
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RemittanceOutcome queued = RemittanceOutcome(
    fhirCode: 'queued',
  );

  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RemittanceOutcome complete = RemittanceOutcome(
    fhirCode: 'complete',
  );

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RemittanceOutcome error = RemittanceOutcome(
    fhirCode: 'error',
  );

  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RemittanceOutcome partial = RemittanceOutcome(
    fhirCode: 'partial',
  );

  /// For instances where an Element is present but not value

  static final RemittanceOutcome elementOnly = RemittanceOutcome();

  /// List of all enum-like values
  static final List<RemittanceOutcome> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  RemittanceOutcome withElement(Element? newElement) {
    return RemittanceOutcome(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RemittanceOutcome] from JSON.
  static RemittanceOutcome fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RemittanceOutcome.elementOnly.withElement(element);
    }
    return RemittanceOutcome.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RemittanceOutcome.$fhirCode';
}
