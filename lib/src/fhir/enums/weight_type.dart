// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of substance weight measurement.
@Entity()
class WeightType extends FhirCode {
  /// Factory constructor to create [WeightType] from JSON.
  factory WeightType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightType.elementOnly(element);
    }
    if (values.contains(value)) {
      return WeightType._(value, element);
    }
    throw ArgumentError(
      'WeightType.fromJson: JSON value is not a valid value',
    );
  }

  /// Exact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightType.Exact([this.element])
      : dbValue = 'Exact',
        super('Exact', element);

  /// Average
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightType.Average([this.element])
      : dbValue = 'Average',
        super('Average', element);

  /// WeightAverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightType.WeightAverage([this.element])
      : dbValue = 'WeightAverage',
        super('WeightAverage', element);

  /// For instances where an Element is present but not value

  WeightType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  WeightType._(super.input, [super.element])
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
    'Exact',
    'Average',
    'WeightAverage',
  ];

  /// Returns the enum value with an element attached
  WeightType withElement(Element? newElement) {
    return WeightType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'WeightType.$value';
}
