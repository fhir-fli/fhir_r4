// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines how a compartment rule is used.
@Entity()
class GraphCompartmentUse extends FhirCode {
  /// Factory constructor to create [GraphCompartmentUse] from JSON.
  factory GraphCompartmentUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return GraphCompartmentUse._(value, element);
    }
    throw ArgumentError(
      'GraphCompartmentUse.fromJson: JSON value is not a valid value',
    );
  }

  /// condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GraphCompartmentUse.condition([this.element])
      : dbValue = 'condition',
        super('condition', element);

  /// requirement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GraphCompartmentUse.requirement([this.element])
      : dbValue = 'requirement',
        super('requirement', element);

  /// For instances where an Element is present but not value

  GraphCompartmentUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GraphCompartmentUse._(super.input, [super.element])
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
    'condition',
    'requirement',
  ];

  /// Returns the enum value with an element attached
  GraphCompartmentUse withElement(Element? newElement) {
    return GraphCompartmentUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GraphCompartmentUse.$value';
}
