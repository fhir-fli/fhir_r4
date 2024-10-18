// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a resource reference is interpreted when testing consent restrictions.
enum ConsentDataMeaning {
  /// Display: Instance
  /// Definition: The consent applies directly to the instance of the resource.
  instance('instance'),

  /// Display: Related
  /// Definition: The consent applies directly to the instance of the resource and instances it refers to.
  related('related'),

  /// Display: Dependents
  /// Definition: The consent applies directly to the instance of the resource and instances that refer to it.
  dependents('dependents'),

  /// Display: AuthoredBy
  /// Definition: The consent applies to instances of resources that are authored by.
  authoredby('authoredby'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConsentDataMeaning(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConsentDataMeaning] instances.
  static ConsentDataMeaning fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaning.elementOnly.withElement(element);
    }
    return ConsentDataMeaning.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConsentDataMeaning withElement(Element? newElement) {
    return ConsentDataMeaning.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
