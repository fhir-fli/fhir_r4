// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for strand.
enum StrandType {
  /// Display: Watson strand of referenceSeq
  /// Definition: Watson strand of reference sequence.
  watson('watson'),

  /// Display: Crick strand of referenceSeq
  /// Definition: Crick strand of reference sequence.
  crick('crick'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const StrandType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [StrandType] instances.
  static StrandType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StrandType.elementOnly.withElement(element);
    }
    return StrandType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  StrandType withElement(Element? newElement) {
    return StrandType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
