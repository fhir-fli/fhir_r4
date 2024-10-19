// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Behavior a server can exhibit when a criteria state does not exist (e.g., state prior to a create or after a delete).
class CriteriaNotExistsBehavior {
  // Private constructor for internal use (like enum)
  CriteriaNotExistsBehavior._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CriteriaNotExistsBehavior values
  /// test_passes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CriteriaNotExistsBehavior test_passes =
      CriteriaNotExistsBehavior._(
    'test-passes',
  );

  /// test_fails
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CriteriaNotExistsBehavior test_fails =
      CriteriaNotExistsBehavior._(
    'test-fails',
  );

  /// For instances where an Element is present but not value

  static final CriteriaNotExistsBehavior elementOnly =
      CriteriaNotExistsBehavior._('');

  /// List of all enum-like values
  static final List<CriteriaNotExistsBehavior> values = [
    test_passes,
    test_fails,
  ];

  /// Returns the enum value with an element attached
  CriteriaNotExistsBehavior withElement(Element? newElement) {
    return CriteriaNotExistsBehavior._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CriteriaNotExistsBehavior] from JSON.
  static CriteriaNotExistsBehavior fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CriteriaNotExistsBehavior.elementOnly.withElement(element);
    }
    return CriteriaNotExistsBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CriteriaNotExistsBehavior.$fhirCode';
}
