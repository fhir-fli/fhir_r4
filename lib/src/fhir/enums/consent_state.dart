import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the state of the consent.
enum ConsentState {
  /// Display: Pending
  /// Definition: The consent is in development or awaiting use but is not yet intended to be acted upon.
  draft('draft'),

  /// Display: Proposed
  /// Definition: The consent has been proposed but not yet agreed to by all parties. The negotiation stage.
  proposed('proposed'),

  /// Display: Active
  /// Definition: The consent is to be followed and enforced.
  active('active'),

  /// Display: Rejected
  /// Definition: The consent has been rejected by one or more of the parties.
  rejected('rejected'),

  /// Display: Inactive
  /// Definition: The consent is terminated or replaced.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The consent was created wrongly (e.g. wrong patient) and should be ignored.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConsentState(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConsentState fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentState.elementOnly.withElement(element);
    }
    return ConsentState.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConsentState withElement(Element? newElement) {
    return ConsentState.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
