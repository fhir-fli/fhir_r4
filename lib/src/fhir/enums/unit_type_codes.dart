// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Unit type codes.
enum UnitTypeCodes {
  /// Display: Individual
  /// Definition: A single individual
  individual('individual'),

  /// Display: Family
  /// Definition: A family, typically includes self, spouse(s) and children to a defined age
  family('family'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const UnitTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [UnitTypeCodes] instances.
  static UnitTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitTypeCodes.elementOnly.withElement(element);
    }
    return UnitTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  UnitTypeCodes withElement(Element? newElement) {
    return UnitTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
