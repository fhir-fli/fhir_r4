// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationRequest Status Codes
@collection
class MedicationrequestStatus {
  /// Constructor for internal use (like enum)
  MedicationrequestStatus({this.fhirCode, this.element})
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

  /// MedicationrequestStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationrequestStatus active = MedicationrequestStatus(
    fhirCode: 'active',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationrequestStatus on_hold = MedicationrequestStatus(
    fhirCode: 'on-hold',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationrequestStatus cancelled = MedicationrequestStatus(
    fhirCode: 'cancelled',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationrequestStatus completed = MedicationrequestStatus(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationrequestStatus entered_in_error =
      MedicationrequestStatus(
    fhirCode: 'entered-in-error',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationrequestStatus stopped = MedicationrequestStatus(
    fhirCode: 'stopped',
  );

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationrequestStatus draft = MedicationrequestStatus(
    fhirCode: 'draft',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationrequestStatus unknown = MedicationrequestStatus(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final MedicationrequestStatus elementOnly = MedicationrequestStatus();

  /// List of all enum-like values
  static final List<MedicationrequestStatus> values = [
    active,
    on_hold,
    cancelled,
    completed,
    entered_in_error,
    stopped,
    draft,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationrequestStatus withElement(Element? newElement) {
    return MedicationrequestStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationrequestStatus] from JSON.
  static MedicationrequestStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationrequestStatus.elementOnly.withElement(element);
    }
    return MedicationrequestStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationrequestStatus.$fhirCode';
}
