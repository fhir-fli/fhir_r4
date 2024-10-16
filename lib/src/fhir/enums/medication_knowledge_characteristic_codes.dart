import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Characteristic Codes
enum MedicationKnowledgeCharacteristicCodes {
  /// Display: Imprint Code
  /// Definition: Identyifying marks on product
  imprintcd('imprintcd'),

  /// Display: Size
  /// Definition: Description of size of the product
  size('size'),

  /// Display: Shape
  /// Definition: Description of the shape of the product
  shape('shape'),

  /// Display: Color
  /// Definition: Description of the color of the product
  color('color'),

  /// Display: Coating
  /// Definition: Description of the coating of the product
  coating('coating'),

  /// Display: Scoring
  /// Definition: Description of the scoring of the product
  scoring('scoring'),

  /// Display: Logo
  /// Definition: Description of the Logo of the product
  logo('logo'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationKnowledgeCharacteristicCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationKnowledgeCharacteristicCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeCharacteristicCodes.elementOnly
          .withElement(element);
    }
    return MedicationKnowledgeCharacteristicCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationKnowledgeCharacteristicCodes withElement(Element? newElement) {
    return MedicationKnowledgeCharacteristicCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
