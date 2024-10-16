import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Consent Action codes.
enum ConsentActionCodes {
  /// Display: Collect
  /// Definition: Gather retrieved information for storage
  collect('collect'),

  /// Display: Access
  /// Definition: Retrieval without permitting collection, use or disclosure. e.g., no screen-scraping for collection, use or disclosure (view-only access)
  access('access'),

  /// Display: Use
  /// Definition: Utilize the retrieved information
  use('use'),

  /// Display: Disclose
  /// Definition: Transfer retrieved information
  disclose('disclose'),

  /// Display: Access and Correct
  /// Definition: Allow retrieval of a patient's information for the purpose of update or rectify
  correct('correct'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConsentActionCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConsentActionCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentActionCodes.elementOnly.withElement(element);
    }
    return ConsentActionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConsentActionCodes withElement(Element? newElement) {
    return ConsentActionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
