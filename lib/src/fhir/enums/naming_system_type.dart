// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Identifies the purpose of the naming system.
@collection
class NamingSystemType {
  /// Constructor for internal use (like enum)
  NamingSystemType({this.fhirCode, this.element})
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

  /// NamingSystemType values
  /// codesystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemType codesystem = NamingSystemType(
    fhirCode: 'codesystem',
  );

  /// identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemType identifier = NamingSystemType(
    fhirCode: 'identifier',
  );

  /// root
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemType root = NamingSystemType(
    fhirCode: 'root',
  );

  /// For instances where an Element is present but not value

  static final NamingSystemType elementOnly = NamingSystemType();

  /// List of all enum-like values
  static final List<NamingSystemType> values = [
    codesystem,
    identifier,
    root,
  ];

  /// Returns the enum value with an element attached
  NamingSystemType withElement(Element? newElement) {
    return NamingSystemType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [NamingSystemType] from JSON.
  static NamingSystemType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemType.elementOnly.withElement(element);
    }
    return NamingSystemType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NamingSystemType.$fhirCode';
}
