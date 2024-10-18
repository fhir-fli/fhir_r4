// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a rule statement is applied, such as adding additional consent or removing consent.
enum ConsentProvisionType {
  /// Display: Opt Out
  /// Definition: Consent is denied for actions meeting these rules.
  deny('deny'),

  /// Display: Opt In
  /// Definition: Consent is provided for actions meeting these rules.
  permit('permit'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConsentProvisionType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConsentProvisionType] instances.
  static ConsentProvisionType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentProvisionType.elementOnly.withElement(
        element,
      );
    }
    return ConsentProvisionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConsentProvisionType withElement(Element? newElement) {
    return ConsentProvisionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
