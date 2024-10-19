// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines a set of codes that can be used to express the role of a diagnosis on the Encounter or EpisodeOfCare record.
@collection
class DiagnosisRole {
  /// Constructor for internal use (like enum)
  DiagnosisRole({this.fhirCode, this.element})
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

  /// DiagnosisRole values
  /// AD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosisRole AD = DiagnosisRole(
    fhirCode: 'AD',
  );

  /// DD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosisRole DD = DiagnosisRole(
    fhirCode: 'DD',
  );

  /// CC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosisRole CC = DiagnosisRole(
    fhirCode: 'CC',
  );

  /// CM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosisRole CM = DiagnosisRole(
    fhirCode: 'CM',
  );

  /// pre_op
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosisRole pre_op = DiagnosisRole(
    fhirCode: 'pre-op',
  );

  /// post_op
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosisRole post_op = DiagnosisRole(
    fhirCode: 'post-op',
  );

  /// billing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosisRole billing = DiagnosisRole(
    fhirCode: 'billing',
  );

  /// For instances where an Element is present but not value

  static final DiagnosisRole elementOnly = DiagnosisRole();

  /// List of all enum-like values
  static final List<DiagnosisRole> values = [
    AD,
    DD,
    CC,
    CM,
    pre_op,
    post_op,
    billing,
  ];

  /// Returns the enum value with an element attached
  DiagnosisRole withElement(Element? newElement) {
    return DiagnosisRole(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DiagnosisRole] from JSON.
  static DiagnosisRole fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosisRole.elementOnly.withElement(element);
    }
    return DiagnosisRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DiagnosisRole.$fhirCode';
}
