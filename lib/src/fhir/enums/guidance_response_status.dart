// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The status of a guidance response.
@collection
class GuidanceResponseStatus {
  /// Constructor for internal use (like enum)
  GuidanceResponseStatus({this.fhirCode, this.element})
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

  /// GuidanceResponseStatus values
  /// success
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidanceResponseStatus success = GuidanceResponseStatus(
    fhirCode: 'success',
  );

  /// data_requested
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidanceResponseStatus data_requested = GuidanceResponseStatus(
    fhirCode: 'data-requested',
  );

  /// data_required
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidanceResponseStatus data_required = GuidanceResponseStatus(
    fhirCode: 'data-required',
  );

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidanceResponseStatus in_progress = GuidanceResponseStatus(
    fhirCode: 'in-progress',
  );

  /// failure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidanceResponseStatus failure = GuidanceResponseStatus(
    fhirCode: 'failure',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidanceResponseStatus entered_in_error = GuidanceResponseStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final GuidanceResponseStatus elementOnly = GuidanceResponseStatus();

  /// List of all enum-like values
  static final List<GuidanceResponseStatus> values = [
    success,
    data_requested,
    data_required,
    in_progress,
    failure,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  GuidanceResponseStatus withElement(Element? newElement) {
    return GuidanceResponseStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GuidanceResponseStatus] from JSON.
  static GuidanceResponseStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatus.elementOnly.withElement(element);
    }
    return GuidanceResponseStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GuidanceResponseStatus.$fhirCode';
}
