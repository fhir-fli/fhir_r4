// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall type of this authorization.
enum RegulatedAuthorizationType {
  /// Display: Marketing Authorization
  /// Definition:
  MarketingAuth('MarketingAuth'),

  /// Display: Orphan Drug Authorization
  /// Definition:
  Orphan('Orphan'),

  /// Display: Pediatric Use Drug Authorization
  /// Definition:
  Pediatric('Pediatric'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const RegulatedAuthorizationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [RegulatedAuthorizationType] instances.
  static RegulatedAuthorizationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationType.elementOnly.withElement(
        element,
      );
    }
    return RegulatedAuthorizationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  RegulatedAuthorizationType withElement(Element? newElement) {
    return RegulatedAuthorizationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
