// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The kind of dose or rate specified.
@Entity()
class DoseAndRateType extends FhirCode {
  /// Factory constructor to create [DoseAndRateType] from JSON.
  factory DoseAndRateType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DoseAndRateType.elementOnly(element);
    }
    if (values.contains(value)) {
      return DoseAndRateType._(value, element);
    }
    throw ArgumentError(
      'DoseAndRateType.fromJson: JSON value is not a valid value',
    );
  }

  /// calculated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DoseAndRateType.calculated([this.element])
      : dbValue = 'calculated',
        super('calculated', element);

  /// ordered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DoseAndRateType.ordered([this.element])
      : dbValue = 'ordered',
        super('ordered', element);

  /// For instances where an Element is present but not value

  DoseAndRateType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DoseAndRateType._(super.input, [super.element])
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
    'calculated',
    'ordered',
  ];

  /// Returns the enum value with an element attached
  DoseAndRateType withElement(Element? newElement) {
    return DoseAndRateType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DoseAndRateType.$value';
}
