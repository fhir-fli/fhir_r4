// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set contains representative Activity Type codes, which includes codes from the HL7 DocumentCompletion, ActStatus, and DataOperations code system, W3C PROV-DM and PROV-N concepts and display names, several HL7 Lifecycle Event codes for which there are agreed upon definitions, and non-duplicated codes from the HL7 Security and Privacy Ontology Operations codes.
@Entity()
class ProvenanceActivityType extends FhirCode {
  /// Factory constructor to create [ProvenanceActivityType] from JSON.
  factory ProvenanceActivityType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceActivityType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProvenanceActivityType._(value, element);
    }
    throw ArgumentError(
      'ProvenanceActivityType.fromJson: JSON value is not a valid value',
    );
  }

  /// LA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.LA([this.element])
      : dbValue = 'LA',
        super('LA', element);

  /// ANONY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.ANONY([this.element])
      : dbValue = 'ANONY',
        super('ANONY', element);

  /// DEID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.DEID([this.element])
      : dbValue = 'DEID',
        super('DEID', element);

  /// MASK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.MASK([this.element])
      : dbValue = 'MASK',
        super('MASK', element);

  /// LABEL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.LABEL([this.element])
      : dbValue = 'LABEL',
        super('LABEL', element);

  /// PSEUD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.PSEUD([this.element])
      : dbValue = 'PSEUD',
        super('PSEUD', element);

  /// CREATE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.CREATE([this.element])
      : dbValue = 'CREATE',
        super('CREATE', element);

  /// DELETE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.DELETE([this.element])
      : dbValue = 'DELETE',
        super('DELETE', element);

  /// UPDATE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.UPDATE([this.element])
      : dbValue = 'UPDATE',
        super('UPDATE', element);

  /// APPEND
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.APPEND([this.element])
      : dbValue = 'APPEND',
        super('APPEND', element);

  /// NULLIFY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceActivityType.NULLIFY([this.element])
      : dbValue = 'NULLIFY',
        super('NULLIFY', element);

  /// For instances where an Element is present but not value

  ProvenanceActivityType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProvenanceActivityType._(super.input, [super.element])
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
    'LA',
    'ANONY',
    'DEID',
    'MASK',
    'LABEL',
    'PSEUD',
    'CREATE',
    'DELETE',
    'UPDATE',
    'APPEND',
    'NULLIFY',
  ];

  /// Returns the enum value with an element attached
  ProvenanceActivityType withElement(Element? newElement) {
    return ProvenanceActivityType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProvenanceActivityType.$value';
}
