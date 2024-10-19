// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set contract specific codes for security control.
@collection
class ContractResourceSecurityControlCodes {
  /// Constructor for internal use (like enum)
  ContractResourceSecurityControlCodes({this.fhirCode, this.element})
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

  /// ContractResourceSecurityControlCodes values
  /// policy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceSecurityControlCodes policy =
      ContractResourceSecurityControlCodes(
    fhirCode: 'policy',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceSecurityControlCodes elementOnly =
      ContractResourceSecurityControlCodes();

  /// List of all enum-like values
  static final List<ContractResourceSecurityControlCodes> values = [
    policy,
  ];

  /// Returns the enum value with an element attached
  ContractResourceSecurityControlCodes withElement(Element? newElement) {
    return ContractResourceSecurityControlCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContractResourceSecurityControlCodes] from JSON.
  static ContractResourceSecurityControlCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceSecurityControlCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceSecurityControlCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceSecurityControlCodes.$fhirCode';
}
