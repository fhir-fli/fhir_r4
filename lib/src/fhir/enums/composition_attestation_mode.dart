// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The way in which a person authenticated a composition.
enum CompositionAttestationMode {
  /// Display: Personal
  /// Definition: The person authenticated the content in their personal capacity.
  personal('personal'),

  /// Display: Professional
  /// Definition: The person authenticated the content in their professional capacity.
  professional('professional'),

  /// Display: Legal
  /// Definition: The person authenticated the content and accepted legal responsibility for its content.
  legal('legal'),

  /// Display: Official
  /// Definition: The organization authenticated the content as consistent with their policies and procedures.
  official('official'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CompositionAttestationMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CompositionAttestationMode] instances.
  static CompositionAttestationMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationMode.elementOnly.withElement(element);
    }
    return CompositionAttestationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CompositionAttestationMode withElement(Element? newElement) {
    return CompositionAttestationMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
