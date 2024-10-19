// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The mode of a RESTful capability statement.
@Entity()
class RestfulCapabilityMode extends FhirCode {
  /// Factory constructor to create [RestfulCapabilityMode] from JSON.
  factory RestfulCapabilityMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulCapabilityMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return RestfulCapabilityMode._(value, element);
    }
    throw ArgumentError(
      'RestfulCapabilityMode.fromJson: JSON value is not a valid value',
    );
  }

  /// client
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RestfulCapabilityMode.client([this.element])
      : dbValue = 'client',
        super('client', element);

  /// server
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RestfulCapabilityMode.server([this.element])
      : dbValue = 'server',
        super('server', element);

  /// For instances where an Element is present but not value

  RestfulCapabilityMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RestfulCapabilityMode._(super.input, [super.element])
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
    'client',
    'server',
  ];

  /// Returns the enum value with an element attached
  RestfulCapabilityMode withElement(Element? newElement) {
    return RestfulCapabilityMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RestfulCapabilityMode.$value';
}
