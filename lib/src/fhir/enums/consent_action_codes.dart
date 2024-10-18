// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Consent Action codes.
enum ConsentActionCodes {
  /// Display: Collect
  /// Definition: Gather retrieved information for storage
  collect('collect'),

  /// Display: Access
  /// Definition: Retrieval without permitting collection, use or disclosure. e.g., no screen-scraping for collection, use or disclosure (view-only access)
  access('access'),

  /// Display: Use
  /// Definition: Utilize the retrieved information
  use('use'),

  /// Display: Disclose
  /// Definition: Transfer retrieved information
  disclose('disclose'),

  /// Display: Access and Correct
  /// Definition: Allow retrieval of a patient's information for the purpose of update or rectify
  correct('correct'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConsentActionCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConsentActionCodes] instances.
  static ConsentActionCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentActionCodes.elementOnly.withElement(
        element,
      );
    }
    return ConsentActionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConsentActionCodes withElement(Element? newElement) {
    return ConsentActionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
