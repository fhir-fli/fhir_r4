// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How the Quantity should be understood and represented.
@Entity()
class QuantityComparator extends FhirCode {
  /// Factory constructor to create [QuantityComparator] from JSON.
  factory QuantityComparator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparator.elementOnly(element);
    }
    if (values.contains(value)) {
      return QuantityComparator._(value, element);
    }
    throw ArgumentError(
      'QuantityComparator.fromJson: JSON value is not a valid value',
    );
  }

  /// lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuantityComparator.lt([this.element])
      : dbValue = '<',
        super('<', element);

  /// le
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuantityComparator.le([this.element])
      : dbValue = '<=',
        super('<=', element);

  /// ge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuantityComparator.ge([this.element])
      : dbValue = '>=',
        super('>=', element);

  /// gt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuantityComparator.gt([this.element])
      : dbValue = '>',
        super('>', element);

  /// For instances where an Element is present but not value

  QuantityComparator.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  QuantityComparator._(super.input, [super.element])
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
    '<',
    '<=',
    '>=',
    '>',
  ];

  /// Returns the enum value with an element attached
  QuantityComparator withElement(Element? newElement) {
    return QuantityComparator._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'QuantityComparator.$value';
}
