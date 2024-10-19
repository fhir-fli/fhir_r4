// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example value set defines a set of codes that can be used to indicate a type of organization.
@Entity()
class OrganizationType extends FhirCode {
  /// Factory constructor to create [OrganizationType] from JSON.
  factory OrganizationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return OrganizationType._(value, element);
    }
    throw ArgumentError(
      'OrganizationType.fromJson: JSON value is not a valid value',
    );
  }

  /// prov
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.prov([this.element])
      : dbValue = 'prov',
        super('prov', element);

  /// dept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.dept([this.element])
      : dbValue = 'dept',
        super('dept', element);

  /// team
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.team([this.element])
      : dbValue = 'team',
        super('team', element);

  /// govt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.govt([this.element])
      : dbValue = 'govt',
        super('govt', element);

  /// ins
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.ins([this.element])
      : dbValue = 'ins',
        super('ins', element);

  /// pay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.pay([this.element])
      : dbValue = 'pay',
        super('pay', element);

  /// edu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.edu([this.element])
      : dbValue = 'edu',
        super('edu', element);

  /// reli
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.reli([this.element])
      : dbValue = 'reli',
        super('reli', element);

  /// crs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.crs([this.element])
      : dbValue = 'crs',
        super('crs', element);

  /// cg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.cg([this.element])
      : dbValue = 'cg',
        super('cg', element);

  /// bus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.bus([this.element])
      : dbValue = 'bus',
        super('bus', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrganizationType.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  OrganizationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  OrganizationType._(super.input, [super.element])
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
    'prov',
    'dept',
    'team',
    'govt',
    'ins',
    'pay',
    'edu',
    'reli',
    'crs',
    'cg',
    'bus',
    'other',
  ];

  /// Returns the enum value with an element attached
  OrganizationType withElement(Element? newElement) {
    return OrganizationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OrganizationType.$value';
}
