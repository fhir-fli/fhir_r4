// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within type institutional there may be subtypes for emergency services, bed stay and transportation.
@collection
class ExampleClaimSubTypeCodes {
  /// Constructor for internal use (like enum)
  ExampleClaimSubTypeCodes({this.fhirCode, this.element})
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

  /// ExampleClaimSubTypeCodes values
  /// ortho
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleClaimSubTypeCodes ortho = ExampleClaimSubTypeCodes(
    fhirCode: 'ortho',
  );

  /// emergency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleClaimSubTypeCodes emergency = ExampleClaimSubTypeCodes(
    fhirCode: 'emergency',
  );

  /// For instances where an Element is present but not value

  static final ExampleClaimSubTypeCodes elementOnly =
      ExampleClaimSubTypeCodes();

  /// List of all enum-like values
  static final List<ExampleClaimSubTypeCodes> values = [
    ortho,
    emergency,
  ];

  /// Returns the enum value with an element attached
  ExampleClaimSubTypeCodes withElement(Element? newElement) {
    return ExampleClaimSubTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleClaimSubTypeCodes] from JSON.
  static ExampleClaimSubTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleClaimSubTypeCodes.elementOnly.withElement(element);
    }
    return ExampleClaimSubTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleClaimSubTypeCodes.$fhirCode';
}
