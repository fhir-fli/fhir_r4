// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of participation a provenance participant.
@Entity()
class ProvenanceParticipantType extends FhirCode {
  /// Factory constructor to create [ProvenanceParticipantType] from JSON.
  factory ProvenanceParticipantType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProvenanceParticipantType._(value, element);
    }
    throw ArgumentError(
      'ProvenanceParticipantType.fromJson: JSON value is not a valid value',
    );
  }

  /// enterer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.enterer([this.element])
      : dbValue = 'enterer',
        super('enterer', element);

  /// performer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.performer([this.element])
      : dbValue = 'performer',
        super('performer', element);

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.author([this.element])
      : dbValue = 'author',
        super('author', element);

  /// verifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.verifier([this.element])
      : dbValue = 'verifier',
        super('verifier', element);

  /// legal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.legal([this.element])
      : dbValue = 'legal',
        super('legal', element);

  /// attester
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.attester([this.element])
      : dbValue = 'attester',
        super('attester', element);

  /// informant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.informant([this.element])
      : dbValue = 'informant',
        super('informant', element);

  /// custodian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.custodian([this.element])
      : dbValue = 'custodian',
        super('custodian', element);

  /// assembler
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.assembler([this.element])
      : dbValue = 'assembler',
        super('assembler', element);

  /// composer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceParticipantType.composer([this.element])
      : dbValue = 'composer',
        super('composer', element);

  /// For instances where an Element is present but not value

  ProvenanceParticipantType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProvenanceParticipantType._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
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
  ProvenanceParticipantType withElement(Element? newElement) {
    return ProvenanceParticipantType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProvenanceParticipantType.$value';
}
