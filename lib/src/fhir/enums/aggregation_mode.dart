// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How resource references can be aggregated.
enum AggregationMode {
  /// Display: Contained
  /// Definition: The reference is a local reference to a contained resource.
  contained('contained'),

  /// Display: Referenced
  /// Definition: The reference to a resource that has to be resolved externally to the resource that includes the reference.
  referenced('referenced'),

  /// Display: Bundled
  /// Definition: The resource the reference points to will be found in the same bundle as the resource that includes the reference.
  bundled('bundled'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AggregationMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AggregationMode] instances.
  static AggregationMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AggregationMode.elementOnly.withElement(
        element,
      );
    }
    return AggregationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AggregationMode withElement(Element? newElement) {
    return AggregationMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
