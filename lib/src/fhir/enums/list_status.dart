// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The current state of the list.
@Entity()
class ListStatus extends FhirCode {
  /// Factory constructor to create [ListStatus] from JSON.
  factory ListStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ListStatus._(value, element);
    }
    throw ArgumentError(
      'ListStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// current
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListStatus.current([this.element])
      : dbValue = 'current',
        super('current', element);

  /// retired
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListStatus.retired([this.element])
      : dbValue = 'retired',
        super('retired', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  ListStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ListStatus._(super.input, [super.element])
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
    'current',
    'retired',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  ListStatus withElement(Element? newElement) {
    return ListStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ListStatus.$value';
}
