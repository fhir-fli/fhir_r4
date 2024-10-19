// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How an entity was used in an activity.
@Entity()
class ProvenanceEntityRole extends FhirCode {
  /// Factory constructor to create [ProvenanceEntityRole] from JSON.
  factory ProvenanceEntityRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRole.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProvenanceEntityRole._(value, element);
    }
    throw ArgumentError(
      'ProvenanceEntityRole.fromJson: JSON value is not a valid value',
    );
  }

  /// derivation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceEntityRole.derivation([this.element])
      : dbValue = 'derivation',
        super('derivation', element);

  /// revision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceEntityRole.revision([this.element])
      : dbValue = 'revision',
        super('revision', element);

  /// quotation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceEntityRole.quotation([this.element])
      : dbValue = 'quotation',
        super('quotation', element);

  /// source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceEntityRole.source([this.element])
      : dbValue = 'source',
        super('source', element);

  /// removal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProvenanceEntityRole.removal([this.element])
      : dbValue = 'removal',
        super('removal', element);

  /// For instances where an Element is present but not value

  ProvenanceEntityRole.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProvenanceEntityRole._(super.input, [super.element])
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
    'derivation',
    'revision',
    'quotation',
    'source',
    'removal',
  ];

  /// Returns the enum value with an element attached
  ProvenanceEntityRole withElement(Element? newElement) {
    return ProvenanceEntityRole._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProvenanceEntityRole.$value';
}
