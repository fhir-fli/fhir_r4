// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The gender of a person used for administrative purposes.
class AdministrativeGender {
  // Private constructor for internal use (like enum)
  AdministrativeGender._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdministrativeGender values
  /// male
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrativeGender male = AdministrativeGender._(
    'male',
  );

  /// female
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrativeGender female = AdministrativeGender._(
    'female',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrativeGender other = AdministrativeGender._(
    'other',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrativeGender unknown = AdministrativeGender._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final AdministrativeGender elementOnly = AdministrativeGender._('');

  /// List of all enum-like values
  static final List<AdministrativeGender> values = [
    male,
    female,
    other,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AdministrativeGender withElement(Element? newElement) {
    return AdministrativeGender._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdministrativeGender] from JSON.
  static AdministrativeGender fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGender.elementOnly.withElement(element);
    }
    return AdministrativeGender._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
