// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Used to distinguish different roles a resource can play within a set of linked resources.
@collection
class LinkageType {
  /// Constructor for internal use (like enum)
  LinkageType({this.fhirCode, this.element})
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

  /// LinkageType values
  /// source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LinkageType source = LinkageType(
    fhirCode: 'source',
  );

  /// alternate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LinkageType alternate = LinkageType(
    fhirCode: 'alternate',
  );

  /// historical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LinkageType historical = LinkageType(
    fhirCode: 'historical',
  );

  /// For instances where an Element is present but not value

  static final LinkageType elementOnly = LinkageType();

  /// List of all enum-like values
  static final List<LinkageType> values = [
    source,
    alternate,
    historical,
  ];

  /// Returns the enum value with an element attached
  LinkageType withElement(Element? newElement) {
    return LinkageType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [LinkageType] from JSON.
  static LinkageType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageType.elementOnly.withElement(element);
    }
    return LinkageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LinkageType.$fhirCode';
}
