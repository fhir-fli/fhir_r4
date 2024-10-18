// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
enum ContractResourceDefinitionSubtypeCodes {
  /// Display: Temporary Value
  /// Definition: To be completed
  temp('temp'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ContractResourceDefinitionSubtypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ContractResourceDefinitionSubtypeCodes] instances.
  static ContractResourceDefinitionSubtypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceDefinitionSubtypeCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceDefinitionSubtypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ContractResourceDefinitionSubtypeCodes withElement(Element? newElement) {
    return ContractResourceDefinitionSubtypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
