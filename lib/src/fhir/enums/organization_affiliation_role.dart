// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to another.
@Entity()
class OrganizationAffiliationRole extends FhirCode {
  /// Factory constructor to create [OrganizationAffiliationRole] from JSON.
  factory OrganizationAffiliationRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationAffiliationRole.elementOnly(element);
    }
    if (values.contains(value)) {
      return OrganizationAffiliationRole._(value, element);
    }
    throw ArgumentError(
      'OrganizationAffiliationRole.fromJson: JSON value is not a valid value',
    );
  }

  /// provider
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationAffiliationRole.provider([this.element])
      : dbValue = 'provider',
        super('provider', element);

  /// agency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationAffiliationRole.agency([this.element])
      : dbValue = 'agency',
        super('agency', element);

  /// research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationAffiliationRole.research([this.element])
      : dbValue = 'research',
        super('research', element);

  /// payer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationAffiliationRole.payer([this.element])
      : dbValue = 'payer',
        super('payer', element);

  /// diagnostics
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationAffiliationRole.diagnostics([this.element])
      : dbValue = 'diagnostics',
        super('diagnostics', element);

  /// supplier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationAffiliationRole.supplier([this.element])
      : dbValue = 'supplier',
        super('supplier', element);

  /// HIE_HIO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationAffiliationRole.HIE_HIO([this.element])
      : dbValue = 'HIE/HIO',
        super('HIE/HIO', element);

  /// member
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationAffiliationRole.member([this.element])
      : dbValue = 'member',
        super('member', element);

  /// For instances where an Element is present but not value

  OrganizationAffiliationRole.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  OrganizationAffiliationRole._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'provider',
    'agency',
    'research',
    'payer',
    'diagnostics',
    'supplier',
    'HIE/HIO',
    'member',
  ];

  /// Returns the enum value with an element attached
  OrganizationAffiliationRole withElement(Element? newElement) {
    return OrganizationAffiliationRole._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OrganizationAffiliationRole.$value';
}
