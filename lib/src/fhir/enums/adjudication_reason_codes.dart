// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Adjudication Reason codes.
class AdjudicationReasonCodes {
  // Private constructor for internal use (like enum)
  AdjudicationReasonCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdjudicationReasonCodes values
  /// ar001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationReasonCodes ar001 = AdjudicationReasonCodes._(
    'ar001',
  );

  /// ar002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationReasonCodes ar002 = AdjudicationReasonCodes._(
    'ar002',
  );

  /// For instances where an Element is present but not value

  static final AdjudicationReasonCodes elementOnly =
      AdjudicationReasonCodes._('');

  /// List of all enum-like values
  static final List<AdjudicationReasonCodes> values = [
    ar001,
    ar002,
  ];

  /// Returns the enum value with an element attached
  AdjudicationReasonCodes withElement(Element? newElement) {
    return AdjudicationReasonCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdjudicationReasonCodes] from JSON.
  static AdjudicationReasonCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationReasonCodes.elementOnly.withElement(element);
    }
    return AdjudicationReasonCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
