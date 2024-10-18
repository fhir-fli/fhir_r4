// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The gender of a person used for administrative purposes.
enum AdministrativeGender {
  /// Display: Male
  /// Definition: Male.
  male('male'),

  /// Display: Female
  /// Definition: Female.
  female('female'),

  /// Display: Other
  /// Definition: Other.
  other('other'),

  /// Display: Unknown
  /// Definition: Unknown.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdministrativeGender(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdministrativeGender] instances.
  static AdministrativeGender fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGender.elementOnly.withElement(
        element,
      );
    }
    return AdministrativeGender.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdministrativeGender withElement(Element? newElement) {
    return AdministrativeGender.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
