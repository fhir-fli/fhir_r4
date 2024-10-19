// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes indicating the degree of authority/intentionality associated with a care plan.
@collection
class CarePlanIntent {
  /// Constructor for internal use (like enum)
  CarePlanIntent({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CarePlanIntent values
  /// proposal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent proposal = CarePlanIntent(
    fhirCode: 'proposal',
  );

  /// plan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent plan = CarePlanIntent(
    fhirCode: 'plan',
  );

  /// directive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent directive = CarePlanIntent(
    fhirCode: 'directive',
  );

  /// order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent order = CarePlanIntent(
    fhirCode: 'order',
  );

  /// original_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent original_order = CarePlanIntent(
    fhirCode: 'original-order',
  );

  /// reflex_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent reflex_order = CarePlanIntent(
    fhirCode: 'reflex-order',
  );

  /// filler_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent filler_order = CarePlanIntent(
    fhirCode: 'filler-order',
  );

  /// instance_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent instance_order = CarePlanIntent(
    fhirCode: 'instance-order',
  );

  /// option
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanIntent option = CarePlanIntent(
    fhirCode: 'option',
  );

  /// For instances where an Element is present but not value

  static final CarePlanIntent elementOnly = CarePlanIntent();

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
    return CarePlanIntent(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
