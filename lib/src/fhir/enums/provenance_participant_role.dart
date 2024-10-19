// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The role that a provenance participant played
@Entity()
class ProvenanceParticipantRole extends FhirCode {
  /// Factory constructor to create [ProvenanceParticipantRole] from JSON.
  factory ProvenanceParticipantRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantRole.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProvenanceParticipantRole._(value, element);
    }
    throw ArgumentError(
      'ProvenanceParticipantRole.fromJson: JSON value is not a valid value',
    );
  }

  /// enterer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.enterer([this.element])
      : dbValue = 'enterer',
        super('enterer', element);

  /// performer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.performer([this.element])
      : dbValue = 'performer',
        super('performer', element);

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.author([this.element])
      : dbValue = 'author',
        super('author', element);

  /// verifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.verifier([this.element])
      : dbValue = 'verifier',
        super('verifier', element);

  /// legal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.legal([this.element])
      : dbValue = 'legal',
        super('legal', element);

  /// attester
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.attester([this.element])
      : dbValue = 'attester',
        super('attester', element);

  /// informant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.informant([this.element])
      : dbValue = 'informant',
        super('informant', element);

  /// custodian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.custodian([this.element])
      : dbValue = 'custodian',
        super('custodian', element);

  /// assembler
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.assembler([this.element])
      : dbValue = 'assembler',
        super('assembler', element);

  /// composer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantRole.composer([this.element])
      : dbValue = 'composer',
        super('composer', element);

  /// For instances where an Element is present but not value

  ProvenanceParticipantRole.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProvenanceParticipantRole._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'enterer',
    'performer',
    'author',
    'verifier',
    'legal',
    'attester',
    'informant',
    'custodian',
    'assembler',
    'composer',
  ];

  /// Returns the enum value with an element attached
  ProvenanceParticipantRole withElement(Element? newElement) {
    return ProvenanceParticipantRole._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProvenanceParticipantRole.$value';
}
