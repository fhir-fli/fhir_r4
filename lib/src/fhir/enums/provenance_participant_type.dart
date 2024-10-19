// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of participation a provenance participant.
@collection
class ProvenanceParticipantType {
  /// Constructor for internal use (like enum)
  ProvenanceParticipantType({this.fhirCode, this.element})
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

  /// ProvenanceParticipantType values
  /// enterer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType enterer = ProvenanceParticipantType(
    fhirCode: 'enterer',
  );

  /// performer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType performer = ProvenanceParticipantType(
    fhirCode: 'performer',
  );

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType author = ProvenanceParticipantType(
    fhirCode: 'author',
  );

  /// verifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType verifier = ProvenanceParticipantType(
    fhirCode: 'verifier',
  );

  /// legal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType legal = ProvenanceParticipantType(
    fhirCode: 'legal',
  );

  /// attester
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType attester = ProvenanceParticipantType(
    fhirCode: 'attester',
  );

  /// informant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType informant = ProvenanceParticipantType(
    fhirCode: 'informant',
  );

  /// custodian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType custodian = ProvenanceParticipantType(
    fhirCode: 'custodian',
  );

  /// assembler
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType assembler = ProvenanceParticipantType(
    fhirCode: 'assembler',
  );

  /// composer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType composer = ProvenanceParticipantType(
    fhirCode: 'composer',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceParticipantType elementOnly =
      ProvenanceParticipantType();

  /// List of all enum-like values
  static final List<ProvenanceParticipantType> values = [
    enterer,
    performer,
    author,
    verifier,
    legal,
    attester,
    informant,
    custodian,
    assembler,
    composer,
  ];

  /// Returns the enum value with an element attached
  ProvenanceParticipantType withElement(Element? newElement) {
    return ProvenanceParticipantType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProvenanceParticipantType] from JSON.
  static ProvenanceParticipantType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantType.elementOnly.withElement(element);
    }
    return ProvenanceParticipantType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProvenanceParticipantType.$fhirCode';
}
