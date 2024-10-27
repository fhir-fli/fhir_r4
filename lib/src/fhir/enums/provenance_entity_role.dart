// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How an entity was used in an activity.
class ProvenanceEntityRole {
  // Private constructor for internal use (like enum)
  ProvenanceEntityRole._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProvenanceEntityRole values
  /// derivation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole derivation = ProvenanceEntityRole._(
    'derivation',
  );

  /// revision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole revision = ProvenanceEntityRole._(
    'revision',
  );

  /// quotation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole quotation = ProvenanceEntityRole._(
    'quotation',
  );

  /// source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole source = ProvenanceEntityRole._(
    'source',
  );

  /// removal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole removal = ProvenanceEntityRole._(
    'removal',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceEntityRole elementOnly = ProvenanceEntityRole._('');

  /// List of all enum-like values
  static final List<ProvenanceEntityRole> values = [
    derivation,
    revision,
    quotation,
    source,
    removal,
  ];

  /// Returns the enum value with an element attached
  ProvenanceEntityRole withElement(Element? newElement) {
    return ProvenanceEntityRole._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProvenanceEntityRole] from JSON.
  static ProvenanceEntityRole fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRole.elementOnly.withElement(element);
    }
    return ProvenanceEntityRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
