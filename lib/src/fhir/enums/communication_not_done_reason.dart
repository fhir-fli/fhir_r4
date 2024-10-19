// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes for the reason why a communication did not happen.
@collection
class CommunicationNotDoneReason {
  /// Constructor for internal use (like enum)
  CommunicationNotDoneReason({this.fhirCode, this.element})
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

  /// CommunicationNotDoneReason values
  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationNotDoneReason unknown = CommunicationNotDoneReason(
    fhirCode: 'unknown',
  );

  /// system_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationNotDoneReason system_error =
      CommunicationNotDoneReason(
    fhirCode: 'system-error',
  );

  /// invalid_phone_number
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationNotDoneReason invalid_phone_number =
      CommunicationNotDoneReason(
    fhirCode: 'invalid-phone-number',
  );

  /// recipient_unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationNotDoneReason recipient_unavailable =
      CommunicationNotDoneReason(
    fhirCode: 'recipient-unavailable',
  );

  /// family_objection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationNotDoneReason family_objection =
      CommunicationNotDoneReason(
    fhirCode: 'family-objection',
  );

  /// patient_objection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommunicationNotDoneReason patient_objection =
      CommunicationNotDoneReason(
    fhirCode: 'patient-objection',
  );

  /// For instances where an Element is present but not value

  static final CommunicationNotDoneReason elementOnly =
      CommunicationNotDoneReason();

  /// List of all enum-like values
  static final List<CommunicationNotDoneReason> values = [
    unknown,
    system_error,
    invalid_phone_number,
    recipient_unavailable,
    family_objection,
    patient_objection,
  ];

  /// Returns the enum value with an element attached
  CommunicationNotDoneReason withElement(Element? newElement) {
    return CommunicationNotDoneReason(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CommunicationNotDoneReason] from JSON.
  static CommunicationNotDoneReason fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationNotDoneReason.elementOnly.withElement(element);
    }
    return CommunicationNotDoneReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommunicationNotDoneReason.$fhirCode';
}
