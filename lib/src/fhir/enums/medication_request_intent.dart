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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationRequestIntent(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationRequestIntent fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestIntent.elementOnly.withElement(element);
    }
    return MedicationRequestIntent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationRequestIntent withElement(Element? newElement) {
    return MedicationRequestIntent.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
