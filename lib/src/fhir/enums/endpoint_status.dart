// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The status of the endpoint.
@Entity()
class EndpointStatus extends FhirCode {
  /// Factory constructor to create [EndpointStatus] from JSON.
  factory EndpointStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return EndpointStatus._(value, element);
    }
    throw ArgumentError(
      'EndpointStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointStatus.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// suspended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointStatus.suspended([this.element])
      : dbValue = 'suspended',
        super('suspended', element);

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointStatus.error([this.element])
      : dbValue = 'error',
        super('error', element);

  /// off
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointStatus.off([this.element])
      : dbValue = 'off',
        super('off', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// test
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointStatus.test([this.element])
      : dbValue = 'test',
        super('test', element);

  /// For instances where an Element is present but not value

  EndpointStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EndpointStatus._(super.input, [super.element])
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
    'active',
    'suspended',
    'error',
    'off',
    'entered-in-error',
    'test',
  ];

  /// Returns the enum value with an element attached
  EndpointStatus withElement(Element? newElement) {
    return EndpointStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EndpointStatus.$value';
}
