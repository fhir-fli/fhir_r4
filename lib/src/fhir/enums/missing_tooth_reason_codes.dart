import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Missing Tooth Reason codes.
enum MissingToothReasonCodes {
  /// Display: E
  /// Definition: Extraction
  e('e'),

  /// Display: C
  /// Definition: Congenital
  c('c'),

  /// Display: U
  /// Definition: Unknown
  u('u'),

  /// Display: O
  /// Definition: Other
  o('o'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MissingToothReasonCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MissingToothReasonCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MissingToothReasonCodes.elementOnly.withElement(element);
    }
    return MissingToothReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MissingToothReasonCodes withElement(Element? newElement) {
    return MissingToothReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
