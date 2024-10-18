// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the level of importance to be assigned to actioning the request.
enum RequestPriority {
  /// Display: Routine
  /// Definition: The request has normal priority.
  routine('routine'),

  /// Display: Urgent
  /// Definition: The request should be actioned promptly - higher priority than routine.
  urgent('urgent'),

  /// Display: ASAP
  /// Definition: The request should be actioned as soon as possible - higher priority than urgent.
  asap('asap'),

  /// Display: STAT
  /// Definition: The request should be actioned immediately - highest possible priority. E.g. an emergency.
  stat('stat'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const RequestPriority(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [RequestPriority] instances.
  static RequestPriority fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriority.elementOnly.withElement(
        element,
      );
    }
    return RequestPriority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  RequestPriority withElement(Element? newElement) {
    return RequestPriority.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
