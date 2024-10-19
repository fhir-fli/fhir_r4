// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The impact of the content of a message.
@Entity()
class MessageSignificanceCategory extends FhirCode {
  /// Factory constructor to create [MessageSignificanceCategory] from JSON.
  factory MessageSignificanceCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return MessageSignificanceCategory._(value, element);
    }
    throw ArgumentError(
      'MessageSignificanceCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// consequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageSignificanceCategory.consequence([this.element])
      : dbValue = 'consequence',
        super('consequence', element);

  /// currency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageSignificanceCategory.currency([this.element])
      : dbValue = 'currency',
        super('currency', element);

  /// notification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageSignificanceCategory.notification([this.element])
      : dbValue = 'notification',
        super('notification', element);

  /// For instances where an Element is present but not value

  MessageSignificanceCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MessageSignificanceCategory._(super.input, [super.element])
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
    'consequence',
    'currency',
    'notification',
  ];

  /// Returns the enum value with an element attached
  MessageSignificanceCategory withElement(Element? newElement) {
    return MessageSignificanceCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MessageSignificanceCategory.$value';
}
