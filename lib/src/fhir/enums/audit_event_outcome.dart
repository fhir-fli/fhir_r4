// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the event succeeded or failed.
enum AuditEventOutcome {
  /// Display: Success
  /// Definition: The operation completed successfully (whether with warnings or not).
  value0('0'),

  /// Display: Minor failure
  /// Definition: The action was not successful due to some kind of minor failure (often equivalent to an HTTP 400 response).
  value4('4'),

  /// Display: Serious failure
  /// Definition: The action was not successful due to some kind of unexpected error (often equivalent to an HTTP 500 response).
  value8('8'),

  /// Display: Major failure
  /// Definition: An error of such magnitude occurred that the system is no longer available for use (i.e. the system died).
  value12('12'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AuditEventOutcome(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AuditEventOutcome] instances.
  static AuditEventOutcome fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcome.elementOnly.withElement(element);
    }
    return AuditEventOutcome.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AuditEventOutcome withElement(Element? newElement) {
    return AuditEventOutcome.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
