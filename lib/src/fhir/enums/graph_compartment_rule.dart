// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How a compartment must be linked.
@collection
class GraphCompartmentRule {
  /// Constructor for internal use (like enum)
  GraphCompartmentRule({this.fhirCode, this.element})
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

  /// GraphCompartmentRule values
  /// identical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GraphCompartmentRule identical = GraphCompartmentRule(
    fhirCode: 'identical',
  );

  /// matching
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GraphCompartmentRule matching = GraphCompartmentRule(
    fhirCode: 'matching',
  );

  /// different
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GraphCompartmentRule different = GraphCompartmentRule(
    fhirCode: 'different',
  );

  /// custom
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GraphCompartmentRule custom = GraphCompartmentRule(
    fhirCode: 'custom',
  );

  /// For instances where an Element is present but not value

  static final GraphCompartmentRule elementOnly = GraphCompartmentRule();

  /// List of all enum-like values
  static final List<GraphCompartmentRule> values = [
    identical,
    matching,
    different,
    custom,
  ];

  /// Returns the enum value with an element attached
  GraphCompartmentRule withElement(Element? newElement) {
    return GraphCompartmentRule(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GraphCompartmentRule] from JSON.
  static GraphCompartmentRule fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentRule.elementOnly.withElement(element);
    }
    return GraphCompartmentRule.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GraphCompartmentRule.$fhirCode';
}
