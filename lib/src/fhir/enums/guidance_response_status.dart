// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of a guidance response.
class GuidanceResponseStatus {
  // Private constructor for internal use (like enum)
  GuidanceResponseStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [GuidanceResponseStatus] from JSON.
  factory GuidanceResponseStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatus.elementOnly.withElement(element);
    }
    return GuidanceResponseStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GuidanceResponseStatus values
  /// success
  static final GuidanceResponseStatus success = GuidanceResponseStatus._(
    'success',
  );

  /// data_requested
  static final GuidanceResponseStatus data_requested = GuidanceResponseStatus._(
    'data-requested',
  );

  /// data_required
  static final GuidanceResponseStatus data_required = GuidanceResponseStatus._(
    'data-required',
  );

  /// in_progress
  static final GuidanceResponseStatus in_progress = GuidanceResponseStatus._(
    'in-progress',
  );

  /// failure
  static final GuidanceResponseStatus failure = GuidanceResponseStatus._(
    'failure',
  );

  /// entered_in_error
  static final GuidanceResponseStatus entered_in_error =
      GuidanceResponseStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final GuidanceResponseStatus elementOnly =
      GuidanceResponseStatus._('');

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
    return GuidanceResponseStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
