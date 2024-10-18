// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProvenanceActivityType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProvenanceActivityType] instances.
  static ProvenanceActivityType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceActivityType.elementOnly.withElement(
        element,
      );
    }
    return ProvenanceActivityType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProvenanceActivityType withElement(Element? newElement) {
    return ProvenanceActivityType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
