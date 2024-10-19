// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to another.
@collection
class OrganizationAffiliationRole {
  /// Constructor for internal use (like enum)
  OrganizationAffiliationRole({this.fhirCode, this.element})
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

  /// OrganizationAffiliationRole values
  /// provider
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationAffiliationRole provider =
      OrganizationAffiliationRole(
    fhirCode: 'provider',
  );

  /// agency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationAffiliationRole agency = OrganizationAffiliationRole(
    fhirCode: 'agency',
  );

  /// research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationAffiliationRole research =
      OrganizationAffiliationRole(
    fhirCode: 'research',
  );

  /// payer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationAffiliationRole payer = OrganizationAffiliationRole(
    fhirCode: 'payer',
  );

  /// diagnostics
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationAffiliationRole diagnostics =
      OrganizationAffiliationRole(
    fhirCode: 'diagnostics',
  );

  /// supplier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationAffiliationRole supplier =
      OrganizationAffiliationRole(
    fhirCode: 'supplier',
  );

  /// HIE_HIO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationAffiliationRole HIE_HIO =
      OrganizationAffiliationRole(
    fhirCode: 'HIE/HIO',
  );

  /// member
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrganizationAffiliationRole member = OrganizationAffiliationRole(
    fhirCode: 'member',
  );

  /// For instances where an Element is present but not value

  static final OrganizationAffiliationRole elementOnly =
      OrganizationAffiliationRole();

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
    return OrganizationAffiliationRole(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [OrganizationAffiliationRole] from JSON.
  static OrganizationAffiliationRole fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationAffiliationRole.elementOnly.withElement(element);
    }
    return OrganizationAffiliationRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OrganizationAffiliationRole.$fhirCode';
}
