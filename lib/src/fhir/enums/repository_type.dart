// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Type for access of external URI.
@collection
class RepositoryType {
  /// Constructor for internal use (like enum)
  RepositoryType({this.fhirCode, this.element})
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

  /// RepositoryType values
  /// directlink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RepositoryType directlink = RepositoryType(
    fhirCode: 'directlink',
  );

  /// openapi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RepositoryType openapi = RepositoryType(
    fhirCode: 'openapi',
  );

  /// login
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RepositoryType login = RepositoryType(
    fhirCode: 'login',
  );

  /// oauth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RepositoryType oauth = RepositoryType(
    fhirCode: 'oauth',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RepositoryType other = RepositoryType(
    fhirCode: 'other',
  );

  /// For instances where an Element is present but not value

  static final RepositoryType elementOnly = RepositoryType();

  /// List of all enum-like values
  static final List<RepositoryType> values = [
    directlink,
    openapi,
    login,
    oauth,
    other,
  ];

  /// Returns the enum value with an element attached
  RepositoryType withElement(Element? newElement) {
    return RepositoryType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RepositoryType] from JSON.
  static RepositoryType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryType.elementOnly.withElement(element);
    }
    return RepositoryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RepositoryType.$fhirCode';
}
