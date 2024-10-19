// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of relationship between reports.
@collection
class ReportRelationshipType {
  /// Constructor for internal use (like enum)
  ReportRelationshipType({this.fhirCode, this.element})
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

  /// ReportRelationshipType values
  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType replaces = ReportRelationshipType(
    fhirCode: 'replaces',
  );

  /// amends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType amends = ReportRelationshipType(
    fhirCode: 'amends',
  );

  /// appends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType appends = ReportRelationshipType(
    fhirCode: 'appends',
  );

  /// transforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType transforms = ReportRelationshipType(
    fhirCode: 'transforms',
  );

  /// replacedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType replacedWith = ReportRelationshipType(
    fhirCode: 'replacedWith',
  );

  /// amendedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType amendedWith = ReportRelationshipType(
    fhirCode: 'amendedWith',
  );

  /// appendedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType appendedWith = ReportRelationshipType(
    fhirCode: 'appendedWith',
  );

  /// transformedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType transformedWith = ReportRelationshipType(
    fhirCode: 'transformedWith',
  );

  /// For instances where an Element is present but not value

  static final ReportRelationshipType elementOnly = ReportRelationshipType();

  /// List of all enum-like values
  static final List<ReportRelationshipType> values = [
    replaces,
    amends,
    appends,
    transforms,
    replacedWith,
    amendedWith,
    appendedWith,
    transformedWith,
  ];

  /// Returns the enum value with an element attached
  ReportRelationshipType withElement(Element? newElement) {
    return ReportRelationshipType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ReportRelationshipType] from JSON.
  static ReportRelationshipType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportRelationshipType.elementOnly.withElement(element);
    }
    return ReportRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReportRelationshipType.$fhirCode';
}
