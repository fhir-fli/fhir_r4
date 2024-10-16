import 'package:fhir_r4/fhir_r4.dart';

/// Type for strand.
enum StrandType {
  /// Display: Watson strand of referenceSeq
  /// Definition: Watson strand of reference sequence.
  watson('watson'),

  /// Display: Crick strand of referenceSeq
  /// Definition: Crick strand of reference sequence.
  crick('crick'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StrandType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StrandType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StrandType.elementOnly.withElement(element);
    }
    return StrandType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StrandType withElement(Element? newElement) {
    return StrandType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
