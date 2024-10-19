// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Identifies the style of unique identifier used to identify a namespace.
@Entity()
class NamingSystemIdentifierType extends FhirCode {
  /// Factory constructor to create [NamingSystemIdentifierType] from JSON.
  factory NamingSystemIdentifierType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType.elementOnly(element);
    }
    if (values.contains(value)) {
      return NamingSystemIdentifierType._(value, element);
    }
    throw ArgumentError(
      'NamingSystemIdentifierType.fromJson: JSON value is not a valid value',
    );
  }

  /// oid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NamingSystemIdentifierType.oid([this.element])
      : dbValue = 'oid',
        super('oid', element);

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NamingSystemIdentifierType.uuid([this.element])
      : dbValue = 'uuid',
        super('uuid', element);

  /// uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NamingSystemIdentifierType.uri([this.element])
      : dbValue = 'uri',
        super('uri', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NamingSystemIdentifierType.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  NamingSystemIdentifierType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  NamingSystemIdentifierType._(super.input, [super.element])
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
    'oid',
    'uuid',
    'uri',
    'other',
  ];

  /// Returns the enum value with an element attached
  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NamingSystemIdentifierType.$value';
}
