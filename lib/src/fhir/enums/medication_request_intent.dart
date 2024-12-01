// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Intent Codes
class MedicationRequestIntent {
  // Private constructor for internal use (like enum)
  MedicationRequestIntent._(this.fhirCode, {this.element});

  /// Factory constructor to create [MedicationRequestIntent] from JSON.
  factory MedicationRequestIntent.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestIntent.elementOnly.withElement(element);
    }
    return MedicationRequestIntent._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationRequestIntent values
  /// proposal
  static final MedicationRequestIntent proposal = MedicationRequestIntent._(
    'proposal',
  );

  /// plan
  static final MedicationRequestIntent plan = MedicationRequestIntent._(
    'plan',
  );

  /// order
  static final MedicationRequestIntent order = MedicationRequestIntent._(
    'order',
  );

  /// original_order
  static final MedicationRequestIntent original_order =
      MedicationRequestIntent._(
    'original-order',
  );

  /// reflex_order
  static final MedicationRequestIntent reflex_order = MedicationRequestIntent._(
    'reflex-order',
  );

  /// filler_order
  static final MedicationRequestIntent filler_order = MedicationRequestIntent._(
    'filler-order',
  );

  /// instance_order
  static final MedicationRequestIntent instance_order =
      MedicationRequestIntent._(
    'instance-order',
  );

  /// option
  static final MedicationRequestIntent option = MedicationRequestIntent._(
    'option',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestIntent elementOnly =
      MedicationRequestIntent._('');

  /// List of all enum-like values
  static final List<MedicationRequestIntent> values = [
    proposal,
    plan,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Returns the enum value with an element attached
  MedicationRequestIntent withElement(Element? newElement) {
    return MedicationRequestIntent._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
