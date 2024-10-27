// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for an interaction between two substances.
class InteractionType {
  // Private constructor for internal use (like enum)
  InteractionType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// InteractionType values
  /// drug_drug
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionType drug_drug = InteractionType._(
    'drug-drug',
  );

  /// drug_food
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionType drug_food = InteractionType._(
    'drug-food',
  );

  /// drug_test
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionType drug_test = InteractionType._(
    'drug-test',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionType other = InteractionType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final InteractionType elementOnly = InteractionType._('');

  /// List of all enum-like values
  static final List<InteractionType> values = [
    drug_drug,
    drug_food,
    drug_test,
    other,
  ];

  /// Returns the enum value with an element attached
  InteractionType withElement(Element? newElement) {
    return InteractionType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [InteractionType] from JSON.
  static InteractionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionType.elementOnly.withElement(element);
    }
    return InteractionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
