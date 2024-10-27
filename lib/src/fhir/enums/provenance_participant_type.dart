// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participation a provenance participant.
class ProvenanceParticipantType {
  // Private constructor for internal use (like enum)
  ProvenanceParticipantType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProvenanceParticipantType values
  /// enterer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType enterer = ProvenanceParticipantType._(
    'enterer',
  );

  /// performer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType performer =
      ProvenanceParticipantType._(
    'performer',
  );

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType author = ProvenanceParticipantType._(
    'author',
  );

  /// verifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType verifier = ProvenanceParticipantType._(
    'verifier',
  );

  /// legal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType legal = ProvenanceParticipantType._(
    'legal',
  );

  /// attester
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType attester = ProvenanceParticipantType._(
    'attester',
  );

  /// informant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType informant =
      ProvenanceParticipantType._(
    'informant',
  );

  /// custodian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType custodian =
      ProvenanceParticipantType._(
    'custodian',
  );

  /// assembler
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType assembler =
      ProvenanceParticipantType._(
    'assembler',
  );

  /// composer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantType composer = ProvenanceParticipantType._(
    'composer',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceParticipantType elementOnly =
      ProvenanceParticipantType._('');

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
    return ProvenanceParticipantType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
