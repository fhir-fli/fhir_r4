// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Behavior a server can exhibit when a criteria state does not exist (e.g., state prior to a create or after a delete).
enum CriteriaNotExistsBehavior {
  /// Display: test passes
  /// Definition: The requested conditional statement will pass if a matching state does not exist (e.g., previous state during create).
  test_passes('test-passes'),

  /// Display: test fails
  /// Definition: The requested conditional statement will fail if a matching state does not exist (e.g., previous state during create).
  test_fails('test-fails'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CriteriaNotExistsBehavior(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CriteriaNotExistsBehavior] instances.
  static CriteriaNotExistsBehavior fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  CriteriaNotExistsBehavior withElement(Element? newElement) {
    return CriteriaNotExistsBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
