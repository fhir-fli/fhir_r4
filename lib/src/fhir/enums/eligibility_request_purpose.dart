// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the types of information being requested.
enum EligibilityRequestPurpose {
  /// Display: Coverage auth-requirements
  /// Definition: The prior authorization requirements for the listed, or discovered if specified, converages for the categories of service and/or specifed biling codes are requested.
  auth_requirements('auth-requirements'),

  /// Display: Coverage benefits
  /// Definition: The plan benefits and optionally benefits consumed for the listed, or discovered if specified, converages are requested.
  benefits('benefits'),

  /// Display: Coverage Discovery
  /// Definition: The insurer is requested to report on any coverages which they are aware of in addition to any specifed.
  discovery('discovery'),

  /// Display: Coverage Validation
  /// Definition: A check that the specified coverages are in-force is requested.
  validation('validation'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EligibilityRequestPurpose(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EligibilityRequestPurpose] instances.
  static EligibilityRequestPurpose fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityRequestPurpose.elementOnly.withElement(
        element,
      );
    }
    return EligibilityRequestPurpose.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EligibilityRequestPurpose withElement(Element? newElement) {
    return EligibilityRequestPurpose.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
