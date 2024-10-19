// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The quality of how direct the match is.
@collection
class EvidenceDirectness {
  /// Constructor for internal use (like enum)
  EvidenceDirectness({this.fhirCode, this.element})
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

  /// EvidenceDirectness values
  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceDirectness low = EvidenceDirectness(
    fhirCode: 'low',
  );

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceDirectness moderate = EvidenceDirectness(
    fhirCode: 'moderate',
  );

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceDirectness high = EvidenceDirectness(
    fhirCode: 'high',
  );

  /// exact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceDirectness exact = EvidenceDirectness(
    fhirCode: 'exact',
  );

  /// For instances where an Element is present but not value

  static final EvidenceDirectness elementOnly = EvidenceDirectness();

  /// List of all enum-like values
  static final List<EvidenceDirectness> values = [
    low,
    moderate,
    high,
    exact,
  ];

  /// Returns the enum value with an element attached
  EvidenceDirectness withElement(Element? newElement) {
    return EvidenceDirectness(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceDirectness] from JSON.
  static EvidenceDirectness fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceDirectness.elementOnly.withElement(element);
    }
    return EvidenceDirectness.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceDirectness.$fhirCode';
}
