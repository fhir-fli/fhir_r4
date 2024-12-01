// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the episode of care.
class EpisodeOfCareStatus {
  // Private constructor for internal use (like enum)
  EpisodeOfCareStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [EpisodeOfCareStatus] from JSON.
  factory EpisodeOfCareStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatus.elementOnly.withElement(element);
    }
    return EpisodeOfCareStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EpisodeOfCareStatus values
  /// planned
  static final EpisodeOfCareStatus planned = EpisodeOfCareStatus._(
    'planned',
  );

  /// waitlist
  static final EpisodeOfCareStatus waitlist = EpisodeOfCareStatus._(
    'waitlist',
  );

  /// active
  static final EpisodeOfCareStatus active = EpisodeOfCareStatus._(
    'active',
  );

  /// onhold
  static final EpisodeOfCareStatus onhold = EpisodeOfCareStatus._(
    'onhold',
  );

  /// finished
  static final EpisodeOfCareStatus finished = EpisodeOfCareStatus._(
    'finished',
  );

  /// cancelled
  static final EpisodeOfCareStatus cancelled = EpisodeOfCareStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final EpisodeOfCareStatus entered_in_error = EpisodeOfCareStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final EpisodeOfCareStatus elementOnly = EpisodeOfCareStatus._('');

  /// List of all enum-like values
  static final List<EpisodeOfCareStatus> values = [
    planned,
    waitlist,
    active,
    onhold,
    finished,
    cancelled,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  EpisodeOfCareStatus withElement(Element? newElement) {
    return EpisodeOfCareStatus._(fhirCode, element: newElement);
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
