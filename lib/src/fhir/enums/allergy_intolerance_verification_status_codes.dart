// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for AllergyIntolerance Verification Status.
class AllergyIntoleranceVerificationStatusCodes {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceVerificationStatusCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AllergyIntoleranceVerificationStatusCodes values
  /// unconfirmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceVerificationStatusCodes unconfirmed =
      AllergyIntoleranceVerificationStatusCodes._(
    'unconfirmed',
  );

  /// confirmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceVerificationStatusCodes confirmed =
      AllergyIntoleranceVerificationStatusCodes._(
    'confirmed',
  );

  /// refuted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceVerificationStatusCodes refuted =
      AllergyIntoleranceVerificationStatusCodes._(
    'refuted',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceVerificationStatusCodes entered_in_error =
      AllergyIntoleranceVerificationStatusCodes._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceVerificationStatusCodes elementOnly =
      AllergyIntoleranceVerificationStatusCodes._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceVerificationStatusCodes> values = [
    unconfirmed,
    confirmed,
    refuted,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceVerificationStatusCodes withElement(Element? newElement) {
    return AllergyIntoleranceVerificationStatusCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AllergyIntoleranceVerificationStatusCodes] from JSON.
  static AllergyIntoleranceVerificationStatusCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceVerificationStatusCodes.elementOnly
          .withElement(element);
    }
    return AllergyIntoleranceVerificationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
