// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A code that identifies the status of the family history record.
@collection
class FamilyHistoryStatus {
  /// Constructor for internal use (like enum)
  FamilyHistoryStatus({this.fhirCode, this.element})
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

  /// FamilyHistoryStatus values
  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FamilyHistoryStatus partial = FamilyHistoryStatus(
    fhirCode: 'partial',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FamilyHistoryStatus completed = FamilyHistoryStatus(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FamilyHistoryStatus entered_in_error = FamilyHistoryStatus(
    fhirCode: 'entered-in-error',
  );

  /// health_unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FamilyHistoryStatus health_unknown = FamilyHistoryStatus(
    fhirCode: 'health-unknown',
  );

  /// For instances where an Element is present but not value

  static final FamilyHistoryStatus elementOnly = FamilyHistoryStatus();

  /// List of all enum-like values
  static final List<FamilyHistoryStatus> values = [
    partial,
    completed,
    entered_in_error,
    health_unknown,
  ];

  /// Returns the enum value with an element attached
  FamilyHistoryStatus withElement(Element? newElement) {
    return FamilyHistoryStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FamilyHistoryStatus] from JSON.
  static FamilyHistoryStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatus.elementOnly.withElement(element);
    }
    return FamilyHistoryStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FamilyHistoryStatus.$fhirCode';
}
