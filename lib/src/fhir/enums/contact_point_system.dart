// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Telecommunications form for contact point.
@Entity()
class ContactPointSystem extends FhirCode {
  /// Factory constructor to create [ContactPointSystem] from JSON.
  factory ContactPointSystem.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointSystem.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContactPointSystem._(value, element);
    }
    throw ArgumentError(
      'ContactPointSystem.fromJson: JSON value is not a valid value',
    );
  }

  /// phone
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointSystem.phone([this.element])
      : dbValue = 'phone',
        super('phone', element);

  /// fax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointSystem.fax([this.element])
      : dbValue = 'fax',
        super('fax', element);

  /// email
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointSystem.email([this.element])
      : dbValue = 'email',
        super('email', element);

  /// pager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointSystem.pager([this.element])
      : dbValue = 'pager',
        super('pager', element);

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointSystem.url([this.element])
      : dbValue = 'url',
        super('url', element);

  /// sms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointSystem.sms([this.element])
      : dbValue = 'sms',
        super('sms', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointSystem.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  ContactPointSystem.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContactPointSystem._(super.input, [super.element])
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
    'phone',
    'fax',
    'email',
    'pager',
    'url',
    'sms',
    'other',
  ];

  /// Returns the enum value with an element attached
  ContactPointSystem withElement(Element? newElement) {
    return ContactPointSystem._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContactPointSystem.$value';
}
