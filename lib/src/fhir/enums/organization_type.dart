// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate a type of organization.
class OrganizationType {
  // Private constructor for internal use (like enum)
  OrganizationType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// OrganizationType values
  /// prov
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType prov = OrganizationType._(
    'prov',
  );

  /// dept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType dept = OrganizationType._(
    'dept',
  );

  /// team
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType team = OrganizationType._(
    'team',
  );

  /// govt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType govt = OrganizationType._(
    'govt',
  );

  /// ins
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType ins = OrganizationType._(
    'ins',
  );

  /// pay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType pay = OrganizationType._(
    'pay',
  );

  /// edu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType edu = OrganizationType._(
    'edu',
  );

  /// reli
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType reli = OrganizationType._(
    'reli',
  );

  /// crs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType crs = OrganizationType._(
    'crs',
  );

  /// cg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType cg = OrganizationType._(
    'cg',
  );

  /// bus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType bus = OrganizationType._(
    'bus',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationType other = OrganizationType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final OrganizationType elementOnly = OrganizationType._('');

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
    return OrganizationType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
