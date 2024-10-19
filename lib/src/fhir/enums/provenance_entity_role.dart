// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How an entity was used in an activity.
@collection
class ProvenanceEntityRole {
  /// Constructor for internal use (like enum)
  ProvenanceEntityRole({this.fhirCode, this.element})
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

  /// ProvenanceEntityRole values
  /// derivation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole derivation = ProvenanceEntityRole(
    fhirCode: 'derivation',
  );

  /// revision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole revision = ProvenanceEntityRole(
    fhirCode: 'revision',
  );

  /// quotation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole quotation = ProvenanceEntityRole(
    fhirCode: 'quotation',
  );

  /// source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole source = ProvenanceEntityRole(
    fhirCode: 'source',
  );

  /// removal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProvenanceEntityRole removal = ProvenanceEntityRole(
    fhirCode: 'removal',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceEntityRole elementOnly = ProvenanceEntityRole();

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
    return ProvenanceEntityRole(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProvenanceEntityRole.$fhirCode';
}
