// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the data when the report of the immunization event is not based on information from the person, entity or organization who administered the vaccine. This value set is provided as a suggestive example.
class ImmunizationOriginCodes {
  // Private constructor for internal use (like enum)
  ImmunizationOriginCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationOriginCodes values
  /// provider
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationOriginCodes provider = ImmunizationOriginCodes._(
    'provider',
  );

  /// record
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationOriginCodes record = ImmunizationOriginCodes._(
    'record',
  );

  /// recall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationOriginCodes recall = ImmunizationOriginCodes._(
    'recall',
  );

  /// school
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationOriginCodes school = ImmunizationOriginCodes._(
    'school',
  );

  /// jurisdiction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationOriginCodes jurisdiction = ImmunizationOriginCodes._(
    'jurisdiction',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationOriginCodes elementOnly =
      ImmunizationOriginCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationOriginCodes> values = [
    provider,
    record,
    recall,
    school,
    jurisdiction,
  ];

  /// Returns the enum value with an element attached
  ImmunizationOriginCodes withElement(Element? newElement) {
    return ImmunizationOriginCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationOriginCodes] from JSON.
  static ImmunizationOriginCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationOriginCodes.elementOnly.withElement(element);
    }
    return ImmunizationOriginCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationOriginCodes.$fhirCode';
}
