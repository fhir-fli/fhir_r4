// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Type for orientation.
@Entity()
class OrientationType extends FhirCode {
  /// Factory constructor to create [OrientationType] from JSON.
  factory OrientationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return OrientationType._(value, element);
    }
    throw ArgumentError(
      'OrientationType.fromJson: JSON value is not a valid value',
    );
  }

  /// sense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrientationType.sense([this.element])
      : dbValue = 'sense',
        super('sense', element);

  /// antisense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OrientationType.antisense([this.element])
      : dbValue = 'antisense',
        super('antisense', element);

  /// For instances where an Element is present but not value

  OrientationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  OrientationType._(super.input, [super.element])
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
    'sense',
    'antisense',
  ];

  /// Returns the enum value with an element attached
  OrientationType withElement(Element? newElement) {
    return OrientationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OrientationType.$value';
}
