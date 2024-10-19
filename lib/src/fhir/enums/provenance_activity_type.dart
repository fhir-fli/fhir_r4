// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set contains representative Activity Type codes, which includes codes from the HL7 DocumentCompletion, ActStatus, and DataOperations code system, W3C PROV-DM and PROV-N concepts and display names, several HL7 Lifecycle Event codes for which there are agreed upon definitions, and non-duplicated codes from the HL7 Security and Privacy Ontology Operations codes.
@collection
class ProvenanceActivityType {
  /// Constructor for internal use (like enum)
  ProvenanceActivityType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProvenanceActivityType values
  /// LA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType LA = ProvenanceActivityType(
    fhirCode: 'LA',
  );

  /// ANONY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType ANONY = ProvenanceActivityType(
    fhirCode: 'ANONY',
  );

  /// DEID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType DEID = ProvenanceActivityType(
    fhirCode: 'DEID',
  );

  /// MASK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType MASK = ProvenanceActivityType(
    fhirCode: 'MASK',
  );

  /// LABEL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType LABEL = ProvenanceActivityType(
    fhirCode: 'LABEL',
  );

  /// PSEUD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType PSEUD = ProvenanceActivityType(
    fhirCode: 'PSEUD',
  );

  /// CREATE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType CREATE = ProvenanceActivityType(
    fhirCode: 'CREATE',
  );

  /// DELETE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType DELETE = ProvenanceActivityType(
    fhirCode: 'DELETE',
  );

  /// UPDATE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType UPDATE = ProvenanceActivityType(
    fhirCode: 'UPDATE',
  );

  /// APPEND
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType APPEND = ProvenanceActivityType(
    fhirCode: 'APPEND',
  );

  /// NULLIFY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceActivityType NULLIFY = ProvenanceActivityType(
    fhirCode: 'NULLIFY',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceActivityType elementOnly = ProvenanceActivityType();

  /// List of all enum-like values
  static final List<ProvenanceActivityType> values = [
    LA,
    ANONY,
    DEID,
    MASK,
    LABEL,
    PSEUD,
    CREATE,
    DELETE,
    UPDATE,
    APPEND,
    NULLIFY,
  ];

  /// Returns the enum value with an element attached
  ProvenanceActivityType withElement(Element? newElement) {
    return ProvenanceActivityType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProvenanceActivityType] from JSON.
  static ProvenanceActivityType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceActivityType.elementOnly.withElement(element);
    }
    return ProvenanceActivityType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProvenanceActivityType.$fhirCode';
}
