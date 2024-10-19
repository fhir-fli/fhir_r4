// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes for general categories of communications such as alerts, instructions, etc.
@Entity()
class CommunicationCategory extends FhirCode {
  /// Factory constructor to create [CommunicationCategory] from JSON.
  factory CommunicationCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return CommunicationCategory._(value, element);
    }
    throw ArgumentError(
      'CommunicationCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// alert
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationCategory.alert([this.element])
      : dbValue = 'alert',
        super('alert', element);

  /// notification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationCategory.notification([this.element])
      : dbValue = 'notification',
        super('notification', element);

  /// reminder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationCategory.reminder([this.element])
      : dbValue = 'reminder',
        super('reminder', element);

  /// instruction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationCategory.instruction([this.element])
      : dbValue = 'instruction',
        super('instruction', element);

  /// For instances where an Element is present but not value

  CommunicationCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CommunicationCategory._(super.input, [super.element])
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
    'alert',
    'notification',
    'reminder',
    'instruction',
  ];

  /// Returns the enum value with an element attached
  CommunicationCategory withElement(Element? newElement) {
    return CommunicationCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommunicationCategory.$value';
}
