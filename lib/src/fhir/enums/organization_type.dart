// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This example value set defines a set of codes that can be used to indicate a type of organization.
@collection
class OrganizationType {
  /// Constructor for internal use (like enum)
  OrganizationType({this.fhirCode, this.element})
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

  /// OrganizationType values
  /// prov
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType prov = OrganizationType(
    fhirCode: 'prov',
  );

  /// dept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType dept = OrganizationType(
    fhirCode: 'dept',
  );

  /// team
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType team = OrganizationType(
    fhirCode: 'team',
  );

  /// govt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType govt = OrganizationType(
    fhirCode: 'govt',
  );

  /// ins
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType ins = OrganizationType(
    fhirCode: 'ins',
  );

  /// pay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType pay = OrganizationType(
    fhirCode: 'pay',
  );

  /// edu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType edu = OrganizationType(
    fhirCode: 'edu',
  );

  /// reli
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType reli = OrganizationType(
    fhirCode: 'reli',
  );

  /// crs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType crs = OrganizationType(
    fhirCode: 'crs',
  );

  /// cg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType cg = OrganizationType(
    fhirCode: 'cg',
  );

  /// bus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType bus = OrganizationType(
    fhirCode: 'bus',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType other = OrganizationType(
    fhirCode: 'other',
  );

  /// For instances where an Element is present but not value

  static final OrganizationType elementOnly = OrganizationType();

  /// List of all enum-like values
  static final List<OrganizationType> values = [
    prov,
    dept,
    team,
    govt,
    ins,
    pay,
    edu,
    reli,
    crs,
    cg,
    bus,
    other,
  ];

  /// Returns the enum value with an element attached
  OrganizationType withElement(Element? newElement) {
    return OrganizationType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [OrganizationType] from JSON.
  static OrganizationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationType.elementOnly.withElement(element);
    }
    return OrganizationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OrganizationType.$fhirCode';
}
