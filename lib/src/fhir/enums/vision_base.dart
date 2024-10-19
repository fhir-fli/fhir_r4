// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A coded concept listing the base codes.
@Entity()
class VisionBase extends FhirCode {
  /// Factory constructor to create [VisionBase] from JSON.
  factory VisionBase.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBase.elementOnly(element);
    }
    if (values.contains(value)) {
      return VisionBase._(value, element);
    }
    throw ArgumentError(
      'VisionBase.fromJson: JSON value is not a valid value',
    );
  }

  /// up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  VisionBase.up([this.element])
      : dbValue = 'up',
        super('up', element);

  /// down
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  VisionBase.down([this.element])
      : dbValue = 'down',
        super('down', element);

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  VisionBase.in_([this.element])
      : dbValue = 'in',
        super('in', element);

  /// out
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  VisionBase.out([this.element])
      : dbValue = 'out',
        super('out', element);

  /// For instances where an Element is present but not value

  VisionBase.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  VisionBase._(super.input, [super.element])
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
    'up',
    'down',
    'in',
    'out',
  ];

  /// Returns the enum value with an element attached
  VisionBase withElement(Element? newElement) {
    return VisionBase._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'VisionBase.$value';
}
