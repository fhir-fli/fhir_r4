// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Intent Codes
enum MedicationRequestIntent {
  /// Display: Proposal
  /// Definition: The request is a suggestion made by someone/something that doesn't have an intention to ensure it occurs and without providing an authorization to act
  proposal('proposal'),

  /// Display: Plan
  /// Definition: The request represents an intention to ensure something occurs without providing an authorization for others to act.
  plan('plan'),

  /// Display: Order
  /// Definition: The request represents a request/demand and authorization for action
  order('order'),

  /// Display: Original Order
  /// Definition: The request represents the original authorization for the medication request.
  original_order('original-order'),

  /// Display: Reflex Order
  /// Definition: The request represents an automatically generated supplemental authorization for action based on a parent authorization together with initial results of the action taken against that parent authorization..
  reflex_order('reflex-order'),

  /// Display: Filler Order
  /// Definition: The request represents the view of an authorization instantiated by a fulfilling system representing the details of the fulfiller's intention to act upon a submitted order.
  filler_order('filler-order'),

  /// Display: Instance Order
  /// Definition: The request represents an instance for the particular order, for example a medication administration record.
  instance_order('instance-order'),

  /// Display: Option
  /// Definition: The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or other constraints among a set of requests.
  option('option'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationRequestIntent(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationRequestIntent] instances.
  static MedicationRequestIntent fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestIntent.elementOnly.withElement(element);
    }
    return MedicationRequestIntent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationRequestIntent withElement(Element? newElement) {
    return MedicationRequestIntent.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
