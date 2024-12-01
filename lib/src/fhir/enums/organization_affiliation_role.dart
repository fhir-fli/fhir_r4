// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to another.
class OrganizationAffiliationRole {
  // Private constructor for internal use (like enum)
  OrganizationAffiliationRole._(this.fhirCode, {this.element});

  /// Factory constructor to create [OrganizationAffiliationRole] from JSON.
  factory OrganizationAffiliationRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationAffiliationRole.elementOnly.withElement(element);
    }
    return OrganizationAffiliationRole._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// OrganizationAffiliationRole values
  /// provider
  static final OrganizationAffiliationRole provider =
      OrganizationAffiliationRole._(
    'provider',
  );

  /// agency
  static final OrganizationAffiliationRole agency =
      OrganizationAffiliationRole._(
    'agency',
  );

  /// research
  static final OrganizationAffiliationRole research =
      OrganizationAffiliationRole._(
    'research',
  );

  /// payer
  static final OrganizationAffiliationRole payer =
      OrganizationAffiliationRole._(
    'payer',
  );

  /// diagnostics
  static final OrganizationAffiliationRole diagnostics =
      OrganizationAffiliationRole._(
    'diagnostics',
  );

  /// supplier
  static final OrganizationAffiliationRole supplier =
      OrganizationAffiliationRole._(
    'supplier',
  );

  /// HIE_HIO
  static final OrganizationAffiliationRole HIE_HIO =
      OrganizationAffiliationRole._(
    'HIE/HIO',
  );

  /// member
  static final OrganizationAffiliationRole member =
      OrganizationAffiliationRole._(
    'member',
  );

  /// For instances where an Element is present but not value

  static final OrganizationAffiliationRole elementOnly =
      OrganizationAffiliationRole._('');

  /// List of all enum-like values
  static final List<OrganizationAffiliationRole> values = [
    provider,
    agency,
    research,
    payer,
    diagnostics,
    supplier,
    HIE_HIO,
    member,
  ];

  /// Returns the enum value with an element attached
  OrganizationAffiliationRole withElement(Element? newElement) {
    return OrganizationAffiliationRole._(fhirCode, element: newElement);
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
