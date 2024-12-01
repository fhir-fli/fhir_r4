// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participation a provenance participant.
class ProvenanceParticipantType {
  // Private constructor for internal use (like enum)
  ProvenanceParticipantType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ProvenanceParticipantType] from JSON.
  factory ProvenanceParticipantType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantType.elementOnly.withElement(element);
    }
    return ProvenanceParticipantType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProvenanceParticipantType values
  /// enterer
  static final ProvenanceParticipantType enterer = ProvenanceParticipantType._(
    'enterer',
  );

  /// performer
  static final ProvenanceParticipantType performer =
      ProvenanceParticipantType._(
    'performer',
  );

  /// author
  static final ProvenanceParticipantType author = ProvenanceParticipantType._(
    'author',
  );

  /// verifier
  static final ProvenanceParticipantType verifier = ProvenanceParticipantType._(
    'verifier',
  );

  /// legal
  static final ProvenanceParticipantType legal = ProvenanceParticipantType._(
    'legal',
  );

  /// attester
  static final ProvenanceParticipantType attester = ProvenanceParticipantType._(
    'attester',
  );

  /// informant
  static final ProvenanceParticipantType informant =
      ProvenanceParticipantType._(
    'informant',
  );

  /// custodian
  static final ProvenanceParticipantType custodian =
      ProvenanceParticipantType._(
    'custodian',
  );

  /// assembler
  static final ProvenanceParticipantType assembler =
      ProvenanceParticipantType._(
    'assembler',
  );

  /// composer
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

  /// String representation
  @override
  String toString() => fhirCode;
}
