// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the ImagingStudy.
class ImagingStudyStatus {
  // Private constructor for internal use (like enum)
  ImagingStudyStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImagingStudyStatus values
  /// registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudyStatus registered = ImagingStudyStatus._(
    'registered',
  );

  /// available
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudyStatus available = ImagingStudyStatus._(
    'available',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudyStatus cancelled = ImagingStudyStatus._(
    'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudyStatus entered_in_error = ImagingStudyStatus._(
    'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudyStatus unknown = ImagingStudyStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ImagingStudyStatus elementOnly = ImagingStudyStatus._('');

  /// List of all enum-like values
  static final List<ImagingStudyStatus> values = [
    registered,
    available,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImagingStudyStatus withElement(Element? newElement) {
    return ImagingStudyStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImagingStudyStatus] from JSON.
  static ImagingStudyStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudyStatus.elementOnly.withElement(element);
    }
    return ImagingStudyStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
