// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes providing the status of an observation.
@collection
class ObservationStatus {
  /// Constructor for internal use (like enum)
  ObservationStatus({this.fhirCode, this.element})
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

  /// ObservationStatus values
  /// registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus registered = ObservationStatus(
    fhirCode: 'registered',
  );

  /// preliminary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus preliminary = ObservationStatus(
    fhirCode: 'preliminary',
  );

  /// final_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus final_ = ObservationStatus(
    fhirCode: 'final',
  );

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus amended = ObservationStatus(
    fhirCode: 'amended',
  );

  /// corrected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus corrected = ObservationStatus(
    fhirCode: 'corrected',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus cancelled = ObservationStatus(
    fhirCode: 'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus entered_in_error = ObservationStatus(
    fhirCode: 'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus unknown = ObservationStatus(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final ObservationStatus elementOnly = ObservationStatus();

  /// List of all enum-like values
  static final List<ObservationStatus> values = [
    registered,
    preliminary,
    final_,
    amended,
    corrected,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ObservationStatus withElement(Element? newElement) {
    return ObservationStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ObservationStatus] from JSON.
  static ObservationStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatus.elementOnly.withElement(element);
    }
    return ObservationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationStatus.$fhirCode';
}
