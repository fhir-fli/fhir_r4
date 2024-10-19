// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the level of importance to be assigned to actioning the request.
class RequestPriority {
  // Private constructor for internal use (like enum)
  RequestPriority._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RequestPriority values
  /// routine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestPriority routine = RequestPriority._(
    'routine',
  );

  /// urgent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestPriority urgent = RequestPriority._(
    'urgent',
  );

  /// asap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestPriority asap = RequestPriority._(
    'asap',
  );

  /// stat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestPriority stat = RequestPriority._(
    'stat',
  );

  /// For instances where an Element is present but not value

  static final RequestPriority elementOnly = RequestPriority._('');

  /// List of all enum-like values
  static final List<RequestPriority> values = [
    routine,
    urgent,
    asap,
    stat,
  ];

  /// Returns the enum value with an element attached
  RequestPriority withElement(Element? newElement) {
    return RequestPriority._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RequestPriority] from JSON.
  static RequestPriority fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriority.elementOnly.withElement(element);
    }
    return RequestPriority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RequestPriority.$fhirCode';
}
