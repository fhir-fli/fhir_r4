// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Indicates whether the location is still in use.
@Entity()
class LocationStatus extends FhirCode {
  /// Factory constructor to create [LocationStatus] from JSON.
  factory LocationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return LocationStatus._(value, element);
    }
    throw ArgumentError(
      'LocationStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationStatus.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// suspended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationStatus.suspended([this.element])
      : dbValue = 'suspended',
        super('suspended', element);

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationStatus.inactive([this.element])
      : dbValue = 'inactive',
        super('inactive', element);

  /// For instances where an Element is present but not value

  LocationStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  LocationStatus._(super.input, [super.element])
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
    'active',
    'suspended',
    'inactive',
  ];

  /// Returns the enum value with an element attached
  LocationStatus withElement(Element? newElement) {
    return LocationStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LocationStatus.$value';
}
