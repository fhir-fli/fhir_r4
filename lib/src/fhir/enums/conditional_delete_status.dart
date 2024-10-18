// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that indicates how the server supports conditional delete.
enum ConditionalDeleteStatus {
  /// Display: Not Supported
  /// Definition: No support for conditional deletes.
  not_supported('not-supported'),

  /// Display: Single Deletes Supported
  /// Definition: Conditional deletes are supported, but only single resources at a time.
  single('single'),

  /// Display: Multiple Deletes Supported
  /// Definition: Conditional deletes are supported, and multiple resources can be deleted in a single interaction.
  multiple('multiple'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConditionalDeleteStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConditionalDeleteStatus] instances.
  static ConditionalDeleteStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatus.elementOnly.withElement(element);
    }
    return ConditionalDeleteStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConditionalDeleteStatus withElement(Element? newElement) {
    return ConditionalDeleteStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
