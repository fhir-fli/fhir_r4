// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate a type of organization.
class OrganizationType {
  // Private constructor for internal use (like enum)
  OrganizationType._(this.fhirCode, {this.element});

  /// Factory constructor to create [OrganizationType] from JSON.
  factory OrganizationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationType.elementOnly.withElement(element);
    }
    return OrganizationType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// OrganizationType values
  /// prov
  static final OrganizationType prov = OrganizationType._(
    'prov',
  );

  /// dept
  static final OrganizationType dept = OrganizationType._(
    'dept',
  );

  /// team
  static final OrganizationType team = OrganizationType._(
    'team',
  );

  /// govt
  static final OrganizationType govt = OrganizationType._(
    'govt',
  );

  /// ins
  static final OrganizationType ins = OrganizationType._(
    'ins',
  );

  /// pay
  static final OrganizationType pay = OrganizationType._(
    'pay',
  );

  /// edu
  static final OrganizationType edu = OrganizationType._(
    'edu',
  );

  /// reli
  static final OrganizationType reli = OrganizationType._(
    'reli',
  );

  /// crs
  static final OrganizationType crs = OrganizationType._(
    'crs',
  );

  /// cg
  static final OrganizationType cg = OrganizationType._(
    'cg',
  );

  /// bus
  static final OrganizationType bus = OrganizationType._(
    'bus',
  );

  /// other
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

  /// String representation
  @override
  String toString() => fhirCode;
}
