// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Identifies the level of importance to be assigned to actioning the request.
@Entity()
class RequestPriority extends FhirCode {
  /// Factory constructor to create [RequestPriority] from JSON.
  factory RequestPriority.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriority.elementOnly(element);
    }
    if (values.contains(value)) {
      return RequestPriority._(value, element);
    }
    throw ArgumentError(
      'RequestPriority.fromJson: JSON value is not a valid value',
    );
  }

  /// routine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestPriority.routine([this.element])
      : dbValue = 'routine',
        super('routine', element);

  /// urgent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestPriority.urgent([this.element])
      : dbValue = 'urgent',
        super('urgent', element);

  /// asap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestPriority.asap([this.element])
      : dbValue = 'asap',
        super('asap', element);

  /// stat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestPriority.stat([this.element])
      : dbValue = 'stat',
        super('stat', element);

  /// For instances where an Element is present but not value

  RequestPriority.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RequestPriority._(super.input, [super.element])
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
    'routine',
    'urgent',
    'asap',
    'stat',
  ];

  /// Returns the enum value with an element attached
  RequestPriority withElement(Element? newElement) {
    return RequestPriority._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RequestPriority.$value';
}
