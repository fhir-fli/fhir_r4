// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Base values for the order of the items in a list resource.
@Entity()
class ListOrderCodes extends FhirCode {
  /// Factory constructor to create [ListOrderCodes] from JSON.
  factory ListOrderCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListOrderCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ListOrderCodes._(value, element);
    }
    throw ArgumentError(
      'ListOrderCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// user
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListOrderCodes.user([this.element])
      : dbValue = 'user',
        super('user', element);

  /// system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListOrderCodes.system([this.element])
      : dbValue = 'system',
        super('system', element);

  /// event_date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListOrderCodes.event_date([this.element])
      : dbValue = 'event-date',
        super('event-date', element);

  /// entry_date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListOrderCodes.entry_date([this.element])
      : dbValue = 'entry-date',
        super('entry-date', element);

  /// priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListOrderCodes.priority([this.element])
      : dbValue = 'priority',
        super('priority', element);

  /// alphabetic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListOrderCodes.alphabetic([this.element])
      : dbValue = 'alphabetic',
        super('alphabetic', element);

  /// category
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListOrderCodes.category([this.element])
      : dbValue = 'category',
        super('category', element);

  /// patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListOrderCodes.patient([this.element])
      : dbValue = 'patient',
        super('patient', element);

  /// For instances where an Element is present but not value

  ListOrderCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ListOrderCodes._(super.input, [super.element])
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
    'user',
    'system',
    'event-date',
    'entry-date',
    'priority',
    'alphabetic',
    'category',
    'patient',
  ];

  /// Returns the enum value with an element attached
  ListOrderCodes withElement(Element? newElement) {
    return ListOrderCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ListOrderCodes.$value';
}
