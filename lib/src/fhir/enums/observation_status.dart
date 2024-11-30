// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes providing the status of an observation.
class ObservationStatus {
  // Private constructor for internal use (like enum)
  ObservationStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ObservationStatus values
  /// registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus registered = ObservationStatus._(
    'registered',
  );

  /// preliminary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus preliminary = ObservationStatus._(
    'preliminary',
  );

  /// final_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus final_ = ObservationStatus._(
    'final',
  );

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus amended = ObservationStatus._(
    'amended',
  );

  /// corrected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus corrected = ObservationStatus._(
    'corrected',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus cancelled = ObservationStatus._(
    'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus entered_in_error = ObservationStatus._(
    'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationStatus unknown = ObservationStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ObservationStatus elementOnly = ObservationStatus._('');

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
    return ObservationStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
    return ObservationStatus._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
