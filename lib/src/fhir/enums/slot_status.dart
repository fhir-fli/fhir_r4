// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The free/busy status of the slot.
@Entity()
class SlotStatus extends FhirCode {
  /// Factory constructor to create [SlotStatus] from JSON.
  factory SlotStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlotStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return SlotStatus._(value, element);
    }
    throw ArgumentError(
      'SlotStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// busy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SlotStatus.busy([this.element])
      : dbValue = 'busy',
        super('busy', element);

  /// free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SlotStatus.free([this.element])
      : dbValue = 'free',
        super('free', element);

  /// busy_unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SlotStatus.busy_unavailable([this.element])
      : dbValue = 'busy-unavailable',
        super('busy-unavailable', element);

  /// busy_tentative
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SlotStatus.busy_tentative([this.element])
      : dbValue = 'busy-tentative',
        super('busy-tentative', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SlotStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  SlotStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SlotStatus._(super.input, [super.element])
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
    'busy',
    'free',
    'busy-unavailable',
    'busy-tentative',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  SlotStatus withElement(Element? newElement) {
    return SlotStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SlotStatus.$value';
}
