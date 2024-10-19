// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example value set defines a set of codes that can be used to indicate the purpose for which you would contact a contact party.
@Entity()
class ContactEntityType extends FhirCode {
  /// Factory constructor to create [ContactEntityType] from JSON.
  factory ContactEntityType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactEntityType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContactEntityType._(value, element);
    }
    throw ArgumentError(
      'ContactEntityType.fromJson: JSON value is not a valid value',
    );
  }

  /// BILL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactEntityType.BILL([this.element])
      : dbValue = 'BILL',
        super('BILL', element);

  /// ADMIN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactEntityType.ADMIN([this.element])
      : dbValue = 'ADMIN',
        super('ADMIN', element);

  /// HR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactEntityType.HR([this.element])
      : dbValue = 'HR',
        super('HR', element);

  /// PAYOR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactEntityType.PAYOR([this.element])
      : dbValue = 'PAYOR',
        super('PAYOR', element);

  /// PATINF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactEntityType.PATINF([this.element])
      : dbValue = 'PATINF',
        super('PATINF', element);

  /// PRESS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactEntityType.PRESS([this.element])
      : dbValue = 'PRESS',
        super('PRESS', element);

  /// For instances where an Element is present but not value

  ContactEntityType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContactEntityType._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'BILL',
    'ADMIN',
    'HR',
    'PAYOR',
    'PATINF',
    'PRESS',
  ];

  /// Returns the enum value with an element attached
  ContactEntityType withElement(Element? newElement) {
    return ContactEntityType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContactEntityType.$value';
}
