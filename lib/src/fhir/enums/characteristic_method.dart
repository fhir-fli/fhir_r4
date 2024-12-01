// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The method used to determine the characteristic(s) of the variable.
class CharacteristicMethod {
  // Private constructor for internal use (like enum)
  CharacteristicMethod._(this.fhirCode, {this.element});

  /// Factory constructor to create [CharacteristicMethod] from JSON.
  factory CharacteristicMethod.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicMethod.elementOnly.withElement(element);
    }
    return CharacteristicMethod._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CharacteristicMethod values
  /// Default
  static final CharacteristicMethod Default = CharacteristicMethod._(
    'Default',
  );

  /// For instances where an Element is present but not value

  static final CharacteristicMethod elementOnly = CharacteristicMethod._('');

  /// List of all enum-like values
  static final List<CharacteristicMethod> values = [
    Default,
  ];

  /// Returns the enum value with an element attached
  CharacteristicMethod withElement(Element? newElement) {
    return CharacteristicMethod._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
