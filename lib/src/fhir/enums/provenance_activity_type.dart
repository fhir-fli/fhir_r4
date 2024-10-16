import 'package:fhir_r4/fhir_r4.dart';

/// This value set contains representative Activity Type codes, which includes codes from the HL7 DocumentCompletion, ActStatus, and DataOperations code system, W3C PROV-DM and PROV-N concepts and display names, several HL7 Lifecycle Event codes for which there are agreed upon definitions, and non-duplicated codes from the HL7 Security and Privacy Ontology Operations codes.
enum ProvenanceActivityType {
  /// Display:
  /// Definition:
  LA('LA'),

  /// Display:
  /// Definition:
  ANONY('ANONY'),

  /// Display:
  /// Definition:
  DEID('DEID'),

  /// Display:
  /// Definition:
  MASK('MASK'),

  /// Display:
  /// Definition:
  LABEL('LABEL'),

  /// Display:
  /// Definition:
  PSEUD('PSEUD'),

  /// Display:
  /// Definition:
  CREATE('CREATE'),

  /// Display:
  /// Definition:
  DELETE('DELETE'),

  /// Display:
  /// Definition:
  UPDATE('UPDATE'),

  /// Display:
  /// Definition:
  APPEND('APPEND'),

  /// Display:
  /// Definition:
  NULLIFY('NULLIFY'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProvenanceActivityType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProvenanceActivityType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceActivityType.elementOnly.withElement(element);
    }
    return ProvenanceActivityType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProvenanceActivityType withElement(Element? newElement) {
    return ProvenanceActivityType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
