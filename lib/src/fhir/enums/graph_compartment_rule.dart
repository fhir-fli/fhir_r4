// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How a compartment must be linked.
@Entity()
class GraphCompartmentRule extends FhirCode {
  /// Factory constructor to create [GraphCompartmentRule] from JSON.
  factory GraphCompartmentRule.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentRule.elementOnly(element);
    }
    if (values.contains(value)) {
      return GraphCompartmentRule._(value, element);
    }
    throw ArgumentError(
      'GraphCompartmentRule.fromJson: JSON value is not a valid value',
    );
  }

  /// identical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GraphCompartmentRule.identical([this.element])
      : dbValue = 'identical',
        super('identical', element);

  /// matching
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GraphCompartmentRule.matching([this.element])
      : dbValue = 'matching',
        super('matching', element);

  /// different
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GraphCompartmentRule.different([this.element])
      : dbValue = 'different',
        super('different', element);

  /// custom
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GraphCompartmentRule.custom([this.element])
      : dbValue = 'custom',
        super('custom', element);

  /// For instances where an Element is present but not value

  GraphCompartmentRule.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GraphCompartmentRule._(super.input, [super.element])
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
    'identical',
    'matching',
    'different',
    'custom',
  ];

  /// Returns the enum value with an element attached
  GraphCompartmentRule withElement(Element? newElement) {
    return GraphCompartmentRule._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GraphCompartmentRule.$value';
}
