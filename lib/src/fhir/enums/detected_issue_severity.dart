// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates the potential degree of impact of the identified issue on the patient.
@collection
class DetectedIssueSeverity {
  /// Constructor for internal use (like enum)
  DetectedIssueSeverity({this.fhirCode, this.element})
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

  /// DetectedIssueSeverity values
  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DetectedIssueSeverity high = DetectedIssueSeverity(
    fhirCode: 'high',
  );

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DetectedIssueSeverity moderate = DetectedIssueSeverity(
    fhirCode: 'moderate',
  );

  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DetectedIssueSeverity low = DetectedIssueSeverity(
    fhirCode: 'low',
  );

  /// For instances where an Element is present but not value

  static final DetectedIssueSeverity elementOnly = DetectedIssueSeverity();

  /// List of all enum-like values
  static final List<DetectedIssueSeverity> values = [
    high,
    moderate,
    low,
  ];

  /// Returns the enum value with an element attached
  DetectedIssueSeverity withElement(Element? newElement) {
    return DetectedIssueSeverity(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DetectedIssueSeverity] from JSON.
  static DetectedIssueSeverity fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverity.elementOnly.withElement(element);
    }
    return DetectedIssueSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DetectedIssueSeverity.$fhirCode';
}
