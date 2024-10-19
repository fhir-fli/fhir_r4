// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the degree of authority/intentionality associated with a care plan.
class CarePlanIntent {
  // Private constructor for internal use (like enum)
  CarePlanIntent._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CarePlanIntent values
  /// proposal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent proposal = CarePlanIntent._(
    'proposal',
  );

  /// plan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent plan = CarePlanIntent._(
    'plan',
  );

  /// directive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent directive = CarePlanIntent._(
    'directive',
  );

  /// order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent order = CarePlanIntent._(
    'order',
  );

  /// original_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent original_order = CarePlanIntent._(
    'original-order',
  );

  /// reflex_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent reflex_order = CarePlanIntent._(
    'reflex-order',
  );

  /// filler_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent filler_order = CarePlanIntent._(
    'filler-order',
  );

  /// instance_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent instance_order = CarePlanIntent._(
    'instance-order',
  );

  /// option
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent option = CarePlanIntent._(
    'option',
  );

  /// For instances where an Element is present but not value

  static final CarePlanIntent elementOnly = CarePlanIntent._('');

  /// List of all enum-like values
  static final List<CarePlanIntent> values = [
    proposal,
    plan,
    directive,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Returns the enum value with an element attached
  CarePlanIntent withElement(Element? newElement) {
    return CarePlanIntent._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CarePlanIntent] from JSON.
  static CarePlanIntent fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanIntent.elementOnly.withElement(element);
    }
    return CarePlanIntent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CarePlanIntent.$fhirCode';
}
