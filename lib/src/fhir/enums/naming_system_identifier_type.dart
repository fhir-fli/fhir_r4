// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Identifies the style of unique identifier used to identify a namespace.
@collection
class NamingSystemIdentifierType {
  /// Constructor for internal use (like enum)
  NamingSystemIdentifierType({this.fhirCode, this.element})
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

  /// NamingSystemIdentifierType values
  /// oid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemIdentifierType oid = NamingSystemIdentifierType(
    fhirCode: 'oid',
  );

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemIdentifierType uuid = NamingSystemIdentifierType(
    fhirCode: 'uuid',
  );

  /// uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemIdentifierType uri = NamingSystemIdentifierType(
    fhirCode: 'uri',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemIdentifierType other = NamingSystemIdentifierType(
    fhirCode: 'other',
  );

  /// For instances where an Element is present but not value

  static final NamingSystemIdentifierType elementOnly =
      NamingSystemIdentifierType();

  /// List of all enum-like values
  static final List<NamingSystemIdentifierType> values = [
    oid,
    uuid,
    uri,
    other,
  ];

  /// Returns the enum value with an element attached
  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [NamingSystemIdentifierType] from JSON.
  static NamingSystemIdentifierType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType.elementOnly.withElement(element);
    }
    return NamingSystemIdentifierType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NamingSystemIdentifierType.$fhirCode';
}
