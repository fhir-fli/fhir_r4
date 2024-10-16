import 'package:fhir_r4/fhir_r4.dart';

/// The current state of the list.
enum ListStatus {
  /// Display: Current
  /// Definition: The list is considered to be an active part of the patient's record.
  current('current'),

  /// Display: Retired
  /// Definition: The list is "old" and should no longer be considered accurate or relevant.
  retired('retired'),

  /// Display: Entered In Error
  /// Definition: The list was never accurate. It is retained for medico-legal purposes only.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ListStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ListStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListStatus.elementOnly.withElement(element);
    }
    return ListStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ListStatus withElement(Element? newElement) {
    return ListStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
