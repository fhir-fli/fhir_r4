// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The kind of operation to perform as a part of a property based filter.
@Entity()
class FilterOperator extends FhirCode {
  /// Factory constructor to create [FilterOperator] from JSON.
  factory FilterOperator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperator.elementOnly(element);
    }
    if (values.contains(value)) {
      return FilterOperator._(value, element);
    }
    throw ArgumentError(
      'FilterOperator.fromJson: JSON value is not a valid value',
    );
  }

  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.eq([this.element])
      : dbValue = '=',
        super('=', element);

  /// is_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.is_a([this.element])
      : dbValue = 'is-a',
        super('is-a', element);

  /// descendent_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.descendent_of([this.element])
      : dbValue = 'descendent-of',
        super('descendent-of', element);

  /// is_not_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.is_not_a([this.element])
      : dbValue = 'is-not-a',
        super('is-not-a', element);

  /// regex
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.regex([this.element])
      : dbValue = 'regex',
        super('regex', element);

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.in_([this.element])
      : dbValue = 'in',
        super('in', element);

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.not_in([this.element])
      : dbValue = 'not-in',
        super('not-in', element);

  /// generalizes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.generalizes([this.element])
      : dbValue = 'generalizes',
        super('generalizes', element);

  /// exists
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FilterOperator.exists([this.element])
      : dbValue = 'exists',
        super('exists', element);

  /// For instances where an Element is present but not value

  FilterOperator.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FilterOperator._(super.input, [super.element])
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
    '=',
    'is-a',
    'descendent-of',
    'is-not-a',
    'regex',
    'in',
    'not-in',
    'generalizes',
    'exists',
  ];

  /// Returns the enum value with an element attached
  FilterOperator withElement(Element? newElement) {
    return FilterOperator._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FilterOperator.$value';
}
