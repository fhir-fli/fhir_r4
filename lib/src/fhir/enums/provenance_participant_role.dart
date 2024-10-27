// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The role that a provenance participant played
class ProvenanceParticipantRole {
  // Private constructor for internal use (like enum)
  ProvenanceParticipantRole._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProvenanceParticipantRole values
  /// enterer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole enterer = ProvenanceParticipantRole._(
    'enterer',
  );

  /// performer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole performer =
      ProvenanceParticipantRole._(
    'performer',
  );

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole author = ProvenanceParticipantRole._(
    'author',
  );

  /// verifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole verifier = ProvenanceParticipantRole._(
    'verifier',
  );

  /// legal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole legal = ProvenanceParticipantRole._(
    'legal',
  );

  /// attester
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole attester = ProvenanceParticipantRole._(
    'attester',
  );

  /// informant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole informant =
      ProvenanceParticipantRole._(
    'informant',
  );

  /// custodian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole custodian =
      ProvenanceParticipantRole._(
    'custodian',
  );

  /// assembler
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole assembler =
      ProvenanceParticipantRole._(
    'assembler',
  );

  /// composer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceParticipantRole composer = ProvenanceParticipantRole._(
    'composer',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceParticipantRole elementOnly =
      ProvenanceParticipantRole._('');

  /// List of all enum-like values
  static final List<ProvenanceParticipantRole> values = [
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
  ProvenanceParticipantRole withElement(Element? newElement) {
    return ProvenanceParticipantRole._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProvenanceParticipantRole] from JSON.
  static ProvenanceParticipantRole fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantRole.elementOnly.withElement(element);
    }
    return ProvenanceParticipantRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
