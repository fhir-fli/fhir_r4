// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code to indicate if the substance is actively used.
enum FHIRSubstanceStatus {
  /// Display: Active
  /// Definition: The substance is considered for use or reference.
  active('active'),

  /// Display: Inactive
  /// Definition: The substance is considered for reference, but not for use.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The substance was entered in error.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FHIRSubstanceStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FHIRSubstanceStatus] instances.
  static FHIRSubstanceStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSubstanceStatus.elementOnly.withElement(
        element,
      );
    }
    return FHIRSubstanceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FHIRSubstanceStatus withElement(Element? newElement) {
    return FHIRSubstanceStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
