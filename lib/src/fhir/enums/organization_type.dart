// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate a type of organization.
enum OrganizationType {
  /// Display: Healthcare Provider
  /// Definition: An organization that provides healthcare services.
  prov('prov'),

  /// Display: Hospital Department
  /// Definition: A department or ward within a hospital (Generally is not applicable to top level organizations)
  dept('dept'),

  /// Display: Organizational team
  /// Definition: An organizational team is usually a grouping of practitioners that perform a specific function within an organization (which could be a top level organization, or a department).
  team('team'),

  /// Display: Government
  /// Definition: A political body, often used when including organization records for government bodies such as a Federal Government, State or Local Government.
  govt('govt'),

  /// Display: Insurance Company
  /// Definition: A company that provides insurance to its subscribers that may include healthcare related policies.
  ins('ins'),

  /// Display: Payer
  /// Definition: A company, charity, or governmental organization, which processes claims and/or issues payments to providers on behalf of patients or groups of patients.
  pay('pay'),

  /// Display: Educational Institute
  /// Definition: An educational institution that provides education or research facilities.
  edu('edu'),

  /// Display: Religious Institution
  /// Definition: An organization that is identified as a part of a religious institution.
  reli('reli'),

  /// Display: Clinical Research Sponsor
  /// Definition: An organization that is identified as a Pharmaceutical/Clinical Research Sponsor.
  crs('crs'),

  /// Display: Community Group
  /// Definition: An un-incorporated community group.
  cg('cg'),

  /// Display: Non-Healthcare Business or Corporation
  /// Definition: An organization that is a registered business or corporation but not identified by other types.
  bus('bus'),

  /// Display: Other
  /// Definition: Other type of organization not already specified.
  other('other'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const OrganizationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [OrganizationType] instances.
  static OrganizationType fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  OrganizationType withElement(Element? newElement) {
    return OrganizationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
