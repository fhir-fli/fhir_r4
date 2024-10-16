import 'package:fhir_r4/fhir_r4.dart';

/// Type if a sequence -- DNA, RNA, or amino acid sequence.
enum SequenceType {
  /// Display: AA Sequence
  /// Definition: Amino acid sequence.
  aa('aa'),

  /// Display: DNA Sequence
  /// Definition: DNA Sequence.
  dna('dna'),

  /// Display: RNA Sequence
  /// Definition: RNA Sequence.
  rna('rna'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SequenceType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SequenceType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SequenceType.elementOnly.withElement(element);
    }
    return SequenceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SequenceType withElement(Element? newElement) {
    return SequenceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
