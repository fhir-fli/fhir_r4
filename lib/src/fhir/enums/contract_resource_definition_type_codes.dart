// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set contract specific codes for status.
@collection
class ContractResourceDefinitionTypeCodes {
  /// Constructor for internal use (like enum)
  ContractResourceDefinitionTypeCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceDefinitionTypeCodes values
  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceDefinitionTypeCodes temp =
      ContractResourceDefinitionTypeCodes(
    fhirCode: 'temp',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceDefinitionTypeCodes elementOnly =
      ContractResourceDefinitionTypeCodes();

  /// List of all enum-like values
  static final List<ContractResourceDefinitionTypeCodes> values = [
    temp,
  ];

  /// Returns the enum value with an element attached
  ContractResourceDefinitionTypeCodes withElement(Element? newElement) {
    return ContractResourceDefinitionTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContractResourceDefinitionTypeCodes] from JSON.
  static ContractResourceDefinitionTypeCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceDefinitionTypeCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceDefinitionTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceDefinitionTypeCodes.$fhirCode';
}
